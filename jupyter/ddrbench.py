#!/usr/bin/env python
# coding: utf-8

import numpy as np
import time
import pynq

class benchIp:    
    def __init__(self, xsaFile):
        self.overlay = pynq.Overlay(xsaFile)
        self.ip = self.overlay.ddrBenchmark_0
        self.regMap = self.ip.register_map
        self.testLen = 0
        self.rw = -1       
    
    def setTestLen(self, len: int):
        self.regMap.dataNum = len
        self.testLen = len

    def setOpMode(self, rw: bool):
        self.regMap.rw = rw
        self.rw = rw
            
    def createMem(self):
        mem = pynq.allocate(self.testLen, np.uint8)
        self.memBuff = mem
        return mem
    
    def createResArray(self):
        res = pynq.allocate(1, np.uint8)
        self.resBuff = res
        return res
    
    def setup(self):
        self.regMap.mem_1 = self.memBuff.physical_address
        self.regMap.res_1 = self.resBuff.physical_address
           
    def runIp(self) -> int:
        if not self.regMap.CTRL.AP_IDLE:
            return
        
        tStart = time.perf_counter_ns()
        self.regMap.CTRL.AP_START = 1
        while not self.regMap.CTRL.AP_DONE:
            continue
        tStop = time.perf_counter_ns()
        
        return (tStop - tStart)
        
    def cleanup(self):
        del self.memBuff
        del self.resBuff
        
class MemBench:
    def __init__(self, file):
        self.file = file
        self.bench = benchIp(xsaFile=file)
            
    def writeBench(self, length: int = 16384) -> int:
        self.bench.setTestLen(length)
        self.bench.setOpMode(1)
        mem = self.bench.createMem()
        res = self.bench.createResArray()
        self.bench.setup()
        
        time = self.bench.runIp()
                
        print(mem)
        print(res)
    
        del mem
        self.bench.cleanup()
                
        # Return time difference
        return (time)
    
    def readBench(self, length: int = 16384) -> int:
        self.bench.setTestLen(length)
        self.bench.setOpMode(0)
        mem = self.bench.createMem()
        res = self.bench.createResArray()
        
        memTestData = pynq.allocate(length, np.uint8)
        for i in range(length):
            memTestData[i] = i
        
        mem[:]=memTestData[:]
        self.bench.setup()
                
        time = self.bench.runIp()
        
        print(mem)
        print(res)
        
        del mem
        del memTestData
        self.bench.cleanup()
        
        # Return time difference
        return (time)
    
    def runBenchmark(self, runs=10, length=1024):
        writeTime = 0
        readTime = 0
        for run in range(runs):
            writeTime += self.writeBench(length)
            readTime += self.readBench(length)            
        
        writeTimeAvg = (writeTime/runs)/1000
        readTimeAvg = (readTime/runs)/1000
        
        print(f'Test with {length} integers:')
        print(f'Write time: {writeTimeAvg} ms')
        print(f'Read time: {readTimeAvg} ms')


bench = ddrBench("/home/xilinx/pynq_ddrbench.xsa")

bench.runBenchmark(5, 1024)




