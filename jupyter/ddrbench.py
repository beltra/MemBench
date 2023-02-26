#!/usr/bin/env python
# coding: utf-8

# Import the necessary libraries
import numpy as np
import time
import pynq

class benchIp:    
    def __init__(self, xsaFile):
        self.overlay = pynq.Overlay(xsaFile)   # Load bitstream on the PL
        self.ip = self.overlay.ddrBenchmark_0
        self.regMap = self.ip.register_map
    
    def setMaxLen(self, len: int):
        self.maxLength = len  # MB

    def setBitWidth(self, width: int):
        # Size of a single integer in bits
        self.bitWidth = width
    
    def setTestLen(self, len: int):
        if (len > (self.maxLength*1024*1024)):
            self.regMap.dataNum = 0
            self.testLen = 0
            return -1
        # testLen is the number of integers in the array
        self.regMap.dataNum = int((len*8)/self.bitWidth)
        self.testLen = int((len*8)/self.bitWidth)
        return len

    def setOpMode(self, rw: bool):
        # Write -> 1, Read -> 0
        self.regMap.rw = rw
        self.rw = rw
            
    def createMem(self):
        # Use the biggest int size possible to reduce the size of the array in python (total size is the same)
        if (self.bitWidth == 8):
            mem = pynq.allocate(shape=(int(self.testLen*(self.bitWidth/8)),), dtype=np.uint8)
        elif (self.bitWidth == 16 or self.bitWidth == 48 or self.bitWidth == 80 or self.bitWidth == 112):
            mem = pynq.allocate(shape=(int(self.testLen*(self.bitWidth/16)),), dtype=np.uint16)
        elif (self.bitWidth == 32 or self.bitWidth == 96):
            mem = pynq.allocate(shape=(int(self.testLen*(self.bitWidth/32)),), dtype=np.uint32)
        elif (self.bitWidth == 64 or self.bitWidth == 128 or self.bitWidth == 256 or self.bitWidth == 512):
            mem = pynq.allocate(shape=(int(self.testLen*(self.bitWidth/64)),), dtype=np.uint64)
        else:
            mem = pynq.allocate(shape=(int(self.testLen*(self.bitWidth/64)),), dtype=np.uint64)
        self.memBuff = mem
        return mem
    
    def createResArray(self):
        # Create an array of a single element to store the number of clock cycles
        res = pynq.allocate(1, np.uint64)
        self.resBuff = res
        return res
    
    def setup(self):
        # Pass the addresses of the memory to the overlay
        self.regMap.mem_1 = self.memBuff.physical_address
        self.regMap.res_1 = self.resBuff.physical_address
           
    def runIp(self) -> int:
        # Start the Overlay only if not already started
        if not self.regMap.CTRL.AP_IDLE:
            return
        
        # Begin measuring time
        tStart = time.perf_counter_ns()
        # Execute the kernel and stop when done
        self.regMap.CTRL.AP_START = 1
        while not self.regMap.CTRL.AP_DONE:
            continue
        # Stop measuring time
        tStop = time.perf_counter_ns()
        
        return (tStop - tStart)
        
    def cleanup(self):
        # Free the memory
        del self.memBuff
        del self.resBuff

class MemBench:
    def __init__(self, file, bitWidth, maxLen):
        self.bench = benchIp(xsaFile=file)
        self.bench.setMaxLen(maxLen)      # Max memory used (in MB)
        self.bench.setBitWidth(bitWidth)  # uint size in IP
            
    def writeBench(self, length: int = 16384) -> [int, int, int]:
        try:
            self.bench.setTestLen(length)    # Bench size (in bytes)
            self.bench.setOpMode(1)    # Write
            mem = self.bench.createMem()
            res = self.bench.createResArray()
            # Setup the IP
            self.bench.setup()
            
            # Start the IP
            time = self.bench.runIp()
            
            # Get the number of clock cycles taken to complete the test
            clockCycles = res[0]
           
            # Free memory
            self.bench.cleanup()
                
            # Return time difference, clock cycles and 1 (valid test)
            return (time, clockCycles, 1)
        except:
            # An error occured, return an invalid result
            return (0, 0, 0)
    
    def readBench(self, length: int = 16384) -> [int, int]:
        try:
            self.bench.setTestLen(length)    # Bench size (in bytes)
            self.bench.setOpMode(0)    # Read
            mem = self.bench.createMem()
            res = self.bench.createResArray()
            
            self.bench.setup()   # Setup the IP      
            time = self.bench.runIp()   # Start the IP            
            self.bench.cleanup()   # Free memory

            # Return time difference
            return (time, 1)
        except:
            # An error occured, return an invalid result
            return (0, 0)            
    
    def runBenchmark(self, runs=10, length=1024) -> [int, int, int]:
        writeTime = 0.0
        readTime = 0.0
        clockCycles = 0
        validWrites = 0
        validReads = 0
        
        for run in range(runs):
            # Run a write test and sum results
            (t, c, valid) = self.writeBench(length)
            writeTime += t * valid
            clockCycles += c * valid
            validWrites += valid
            
            # Run a read test and sum results
            (t, valid) = self.readBench(length)
            readTime += t * valid
            validReads += valid
        
        if (validWrites > 0):
            writeTimeAvg = (writeTime/validWrites)/1000000
            wSpeed = (length/1000000)/(writeTimeAvg/1000)
        else:
            wSpeed = 0.0
        
        if (validReads > 0):
            readTimeAvg = (readTime/validReads)/1000000
            rSpeed = (length/1000000)/(readTimeAvg/1000)
        else:
            rSpeed = 0.0
            
        return wSpeed, rSpeed, clockCycles

for dataDim in range(0,11):
    # Load each available bitWidth available in sequence
    if (dataDim == 0):
        bench = MemBench("/home/xilinx/pynq_ddrbench_8bit_64MB.xsa", 8, 64)
    elif (dataDim == 1):
        bench = MemBench("/home/xilinx/pynq_ddrbench_16bit_64MB.xsa", 16, 64)
    elif (dataDim == 2):
        bench = MemBench("/home/xilinx/pynq_ddrbench_32bit_128MB.xsa", 32, 128)
    elif (dataDim == 3):
        bench = MemBench("/home/xilinx/pynq_ddrbench_48bit_64MB.xsa", 48, 64)
    elif (dataDim == 4):
        bench = MemBench("/home/xilinx/pynq_ddrbench_64bit_128MB.xsa", 64, 128)
    elif (dataDim == 5):
        bench = MemBench("/home/xilinx/pynq_ddrbench_80bit_64MB.xsa", 80, 64)
    elif (dataDim == 6):
        bench = MemBench("/home/xilinx/pynq_ddrbench_96bit_64MB.xsa", 96, 64)
    elif (dataDim == 7):
        bench = MemBench("/home/xilinx/pynq_ddrbench_112bit_64MB.xsa", 112, 64)
    elif (dataDim == 8):
        bench = MemBench("/home/xilinx/pynq_ddrbench_128bit_128MB.xsa", 128, 128)
    elif (dataDim == 9):
        bench = MemBench("/home/xilinx/pynq_ddrbench_256bit_64MB.xsa", 256, 64)
    elif (dataDim == 10):
        bench = MemBench("/home/xilinx/pynq_ddrbench_512bit_128MB.xsa", 512, 128)
    
    # Test every power of 2 from 2^5 to 2^22 bytes
    for i in range(5, 23):
        length = pow(2, i)
        # Get average speeds and clock cycles taken
        [wSpeed, rSpeed, clockCycles] = bench.runBenchmark(2, length)
        print(f'{bench.bench.bitWidth},{length},{wSpeed:.3f},{rSpeed:.3f},{int(clockCycles)}')

