v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Parameterizable Level-Up-Shifter} 800 -1720 0 0 1 1 {}
T {Functionality of the Level-Shifter:
-) Level shifters are widely used as bridges that connect low core voltage (e.g. 1.5V) to high I/O interface voltage (e.g. 3.3V).
-) The following level shifter has no static power consumption and is suitable for the given I/O interface voltages in ultra-deep sub-micron.
-) However, due to the high threshold voltage of the thick gate oxide transistors M1 and M2, this level shifter is not suitable for sub-1V supply voltages.
-) The level-shifter consists of three inverters and one latch with a cross-coupled PMOS pair for high positive feedback.
-) The pull-down NMOS transistors have to overcome the PMOS latch action before the output change state, so the size of M1 and M2 are larger than M3 and M4.
-) For LV and HV the smallest length for fast settling time is chosen. HV transistor is useable at L > 0.45um. HV PMOS width is always 3um for good matching.
HV NMOS width is 10um in latch and 1um in output inverter. LV PMOS and NMOS width is always 1um for good matching.} 160 -1640 0 0 0.5 0.5 {}
N 1020 -820 1020 -740 {lab=#net1}
N 1020 -820 1100 -820 {lab=#net1}
N 1020 -900 1020 -820 {lab=#net1}
N 1020 -1040 1020 -960 {lab=VDD2}
N 1020 -680 1020 -600 {lab=VSS}
N 1140 -600 1260 -600 {lab=VSS}
N 1260 -680 1260 -600 {lab=VSS}
N 1020 -600 1140 -600 {lab=VSS}
N 1140 -710 1140 -600 {lab=VSS}
N 1020 -710 1140 -710 {lab=VSS}
N 1140 -710 1260 -710 {lab=VSS}
N 1260 -820 1260 -740 {lab=T}
N 1060 -930 1100 -930 {lab=T}
N 1100 -930 1180 -820 {lab=T}
N 1180 -820 1260 -820 {lab=T}
N 1180 -930 1220 -930 {lab=#net1}
N 1100 -820 1180 -930 {lab=#net1}
N 960 -930 1020 -930 {lab=VDD2}
N 960 -1040 960 -930 {lab=VDD2}
N 960 -1040 1020 -1040 {lab=VDD2}
N 1260 -1040 1260 -960 {lab=VDD2}
N 1140 -1040 1260 -1040 {lab=VDD2}
N 1140 -1080 1140 -1040 {lab=VDD2}
N 1020 -1040 1140 -1040 {lab=VDD2}
N 1260 -930 1320 -930 {lab=VDD2}
N 1320 -1040 1320 -930 {lab=VDD2}
N 1260 -1040 1320 -1040 {lab=VDD2}
N 920 -710 980 -710 {lab=AB}
N 1300 -710 1420 -710 {lab=AM}
N 1140 -600 1140 -560 {lab=VSS}
N 1260 -860 1260 -820 {lab=T}
N 1260 -900 1260 -860 {lab=T}
N 920 -740 920 -710 {lab=AB}
N 1500 -880 1500 -860 {lab=T}
N 1260 -860 1500 -860 {lab=T}
N 1700 -860 1700 -670 {
lab=T}
N 1860 -1280 1860 -1240 {lab=VDD2}
N 1860 -1320 1860 -1280 {lab=VDD2}
N 1860 -520 1860 -480 {lab=VSS}
N 1860 -480 1860 -440 {lab=VSS}
N 1860 -1180 1860 -1150 {lab=VDD2}
N 1860 -1150 1860 -1120 {lab=VDD2}
N 1860 -730 1860 -700 {lab=B}
N 1860 -640 1860 -610 {lab=VSS}
N 1860 -610 1860 -580 {lab=VSS}
N 1780 -1210 1820 -1210 {lab=VDD2}
N 1780 -1280 1780 -1210 {lab=VDD2}
N 1780 -1280 1860 -1280 {lab=VDD2}
N 1780 -550 1820 -550 {lab=VSS}
N 1780 -550 1780 -480 {lab=VSS}
N 1780 -480 1860 -480 {lab=VSS}
N 1780 -1150 1860 -1150 {lab=VDD2}
N 1780 -1210 1780 -1150 {lab=VDD2}
N 1780 -610 1860 -610 {lab=VSS}
N 1780 -610 1780 -550 {lab=VSS}
N 1860 -1210 1960 -1210 {lab=VDD2}
N 1860 -1090 1960 -1090 {lab=VDD2}
N 1860 -670 1960 -670 {lab=VSS}
N 1860 -550 1960 -550 {lab=VSS}
N 1860 -870 2000 -870 {
lab=B}
N 1860 -1060 1860 -1030 {lab=B}
N 1960 -1210 1960 -1090 {lab=VDD2}
N 1960 -670 1960 -550 {lab=VSS}
N 1960 -550 1960 -440 {lab=VSS}
N 1960 -1320 1960 -1210 {lab=VDD2}
N 260 -720 260 -660 {
lab=AB}
N 340 -1080 340 -1040 {lab=VDD1}
N 340 -400 340 -360 {lab=VSS}
N 340 -360 340 -320 {lab=VSS}
N 340 -980 340 -950 {lab=VDD1}
N 340 -950 340 -920 {lab=VDD1}
N 340 -520 340 -490 {lab=VSS}
N 340 -490 340 -460 {lab=VSS}
N 260 -1010 300 -1010 {lab=VDD1}
N 260 -1080 260 -1010 {lab=VDD1}
N 260 -1080 340 -1080 {lab=VDD1}
N 260 -430 300 -430 {lab=VSS}
N 260 -430 260 -360 {lab=VSS}
N 260 -360 340 -360 {lab=VSS}
N 260 -950 340 -950 {lab=VDD1}
N 260 -1010 260 -950 {lab=VDD1}
N 260 -490 340 -490 {lab=VSS}
N 260 -490 260 -430 {lab=VSS}
N 340 -1010 440 -1010 {lab=VDD1}
N 340 -890 440 -890 {lab=VDD1}
N 340 -550 440 -550 {lab=VSS}
N 340 -430 440 -430 {lab=VSS}
N 440 -430 440 -320 {lab=VSS}
N 240 -550 300 -550 {lab=A}
N 260 -780 260 -720 {
lab=AB}
N 340 -1100 340 -1080 {lab=VDD1}
N 340 -720 340 -690 {lab=AB}
N 660 -1080 660 -1040 {lab=VDD1}
N 660 -400 660 -360 {lab=VSS}
N 660 -360 660 -320 {lab=VSS}
N 660 -980 660 -950 {lab=VDD1}
N 660 -950 660 -920 {lab=VDD1}
N 660 -520 660 -490 {lab=VSS}
N 660 -490 660 -460 {lab=VSS}
N 580 -1010 620 -1010 {lab=VDD1}
N 580 -1080 580 -1010 {lab=VDD1}
N 580 -1080 660 -1080 {lab=VDD1}
N 580 -430 620 -430 {lab=VSS}
N 580 -430 580 -360 {lab=VSS}
N 580 -360 660 -360 {lab=VSS}
N 580 -950 660 -950 {lab=VDD1}
N 580 -1010 580 -950 {lab=VDD1}
N 580 -490 660 -490 {lab=VSS}
N 580 -490 580 -430 {lab=VSS}
N 660 -1010 760 -1010 {lab=VDD1}
N 660 -890 760 -890 {lab=VDD1}
N 660 -430 760 -430 {lab=VSS}
N 760 -1010 760 -890 {lab=VDD1}
N 760 -430 760 -320 {lab=VSS}
N 660 -1100 660 -1080 {lab=VDD1}
N 340 -1080 440 -1080 {lab=VDD1}
N 440 -1080 440 -1010 {lab=VDD1}
N 760 -1080 760 -1010 {lab=VDD1}
N 660 -1080 760 -1080 {lab=VDD1}
N 340 -750 340 -720 {lab=AB}
N 840 -710 920 -710 {lab=AB}
N 840 -710 840 -230 {lab=AB}
N 510 -230 840 -230 {lab=AB}
N 510 -720 510 -230 {lab=AB}
N 340 -720 510 -720 {lab=AB}
N 660 -720 720 -720 {lab=AM}
N 660 -840 660 -800 {lab=AM}
N 340 -630 340 -590 {lab=AB}
N 260 -660 300 -660 {lab=AB}
N 260 -660 260 -590 {lab=AB}
N 260 -590 340 -590 {lab=AB}
N 260 -720 340 -720 {lab=AB}
N 340 -850 340 -810 {lab=AB}
N 260 -780 300 -780 {lab=AB}
N 260 -850 260 -780 {lab=AB}
N 260 -850 340 -850 {lab=AB}
N 340 -780 440 -780 {lab=VDD1}
N 340 -860 340 -850 {lab=AB}
N 240 -890 300 -890 {lab=A}
N 240 -890 240 -550 {lab=A}
N 230 -550 240 -550 {lab=A}
N 440 -890 440 -780 {lab=VDD1}
N 440 -1010 440 -890 {lab=VDD1}
N 340 -660 440 -660 {lab=VSS}
N 440 -550 440 -430 {lab=VSS}
N 440 -660 440 -550 {lab=VSS}
N 340 -590 340 -580 {lab=AB}
N 660 -720 660 -700 {lab=AM}
N 580 -770 620 -770 {lab=AM}
N 580 -840 580 -770 {lab=AM}
N 580 -840 660 -840 {lab=AM}
N 580 -720 660 -720 {lab=AM}
N 580 -670 580 -590 {lab=AM}
N 660 -770 760 -770 {lab=VDD1}
N 660 -860 660 -840 {lab=AM}
N 760 -890 760 -770 {lab=VDD1}
N 660 -590 660 -580 {lab=AM}
N 560 -550 620 -550 {lab=AB}
N 560 -720 560 -550 {lab=AB}
N 560 -890 620 -890 {lab=AB}
N 510 -720 560 -720 {lab=AB}
N 560 -890 560 -720 {lab=AB}
N 660 -670 760 -670 {lab=VSS}
N 760 -550 760 -430 {lab=VSS}
N 660 -740 660 -720 {lab=AM}
N 580 -770 580 -720 {lab=AM}
N 580 -590 660 -590 {lab=AM}
N 660 -640 660 -590 {lab=AM}
N 580 -670 620 -670 {lab=AM}
N 580 -720 580 -670 {lab=AM}
N 660 -550 760 -550 {lab=VSS}
N 760 -670 760 -550 {lab=VSS}
N 1860 -1030 1860 -990 {lab=B}
N 1860 -930 1860 -900 {lab=B}
N 1780 -960 1820 -960 {lab=B}
N 1780 -1030 1780 -960 {lab=B}
N 1780 -1030 1860 -1030 {lab=B}
N 1780 -900 1860 -900 {lab=B}
N 1780 -960 1780 -900 {lab=B}
N 1500 -860 1700 -860 {lab=T}
N 1860 -770 1860 -730 {lab=B}
N 1780 -800 1820 -800 {lab=B}
N 1780 -800 1780 -730 {lab=B}
N 1780 -730 1860 -730 {lab=B}
N 1780 -860 1860 -860 {lab=B}
N 1780 -860 1780 -800 {lab=B}
N 1700 -670 1820 -670 {lab=T}
N 1860 -860 1860 -830 {lab=B}
N 1860 -900 1860 -870 {lab=B}
N 1860 -870 1860 -860 {lab=B}
N 1700 -1090 1700 -860 {lab=T}
N 1700 -1090 1820 -1090 {lab=T}
N 1860 -800 1960 -800 {lab=VSS}
N 1960 -800 1960 -670 {lab=VSS}
N 1860 -960 1960 -960 {lab=VDD2}
N 1960 -1090 1960 -960 {lab=VDD2}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1140 -560 1 0 {name=p1 lab=VSS}
C {devices/iopin.sym} 1140 -1080 3 0 {name=p5 lab=VDD2}
C {sg13g2_pr/sg13_hv_nmos.sym} 1000 -710 0 0 {name=M1
l=0.5u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1240 -930 0 0 {name=M4
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_wire.sym} 920 -740 0 0 {name=p7 sig_type=std_logic lab=AB}
C {lab_wire.sym} 1500 -880 0 0 {name=p12 sig_type=std_logic lab=T}
C {sg13g2_pr/sg13_hv_pmos.sym} 1040 -930 0 1 {name=M3
l=0.5u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1280 -710 0 1 {name=M2
l=0.5u
w=10u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {annotate_fet_params.sym} 850 -920 0 0 {name=annot1 ref=M1}
C {annotate_fet_params.sym} 2420 -1140 0 0 {name=annot2 ref=M2}
C {lab_pin.sym} 1960 -440 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 1840 -1090 0 0 {name=M5
l=0.5u
w=3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1840 -670 0 0 {name=M6
l=0.5u
w=1u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1840 -550 0 0 {name=M7
l=0.5u
w=1u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 1840 -1210 0 0 {name=M8
l=0.5u
w=3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {devices/opin.sym} 2000 -870 0 0 {name=p2 lab=B}
C {lab_pin.sym} 1860 -1320 1 0 {name=p14 sig_type=std_logic lab=VDD2}
C {lab_pin.sym} 1960 -1320 1 0 {name=p16 sig_type=std_logic lab=VDD2}
C {lab_pin.sym} 1860 -440 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 -320 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -320 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 320 -1010 0 0 {name=M9
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 320 -890 0 0 {name=M12
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 320 -430 0 0 {name=M10
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} 230 -550 0 0 {name=p17 lab=A}
C {devices/iopin.sym} 340 -1100 3 0 {name=p19 lab=VDD1}
C {lab_pin.sym} 660 -1100 1 0 {name=p3 sig_type=std_logic lab=VDD1}
C {lab_pin.sym} 760 -320 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -320 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 640 -1010 0 0 {name=M11
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 640 -890 0 0 {name=M14
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 640 -430 0 0 {name=M15
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1420 -710 2 0 {name=p10 sig_type=std_logic lab=AM}
C {lab_pin.sym} 720 -720 2 0 {name=p11 sig_type=std_logic lab=AM}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 320 -550 0 0 {name=M17
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 640 -550 0 0 {name=M13
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 320 -660 0 0 {name=M16
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 320 -780 0 0 {name=M18
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_pmos.sym} 640 -770 0 0 {name=M19
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 640 -670 0 0 {name=M20
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 1840 -960 0 0 {name=M21
l=0.5u
w=3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1840 -800 0 0 {name=M22
l=0.5u
w=1u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
