dict set slaves control {ports {mem {type i_ap_none width 64} dataNum {type i_ap_none width 32} rw {type i_ap_none width 1} res {type i_ap_none width 64} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode COR
