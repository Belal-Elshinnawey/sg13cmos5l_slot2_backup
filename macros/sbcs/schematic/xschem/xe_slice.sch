v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -540 -150 -480 -150 {
lab=X}
N -540 -150 -540 -90 {
lab=X}
N -540 -90 -520 -90 {
lab=X}
N -540 -90 -540 30 {
lab=X}
N -540 30 -520 30 {
lab=X}
N -320 -150 -260 -150 {
lab=bn0}
N -260 -150 -260 -90 {
lab=bn0}
N -280 -90 -260 -90 {
lab=bn0}
N -220 -90 -200 -90 {
lab=bn0}
N -220 -90 -220 30 {
lab=bn0}
N -220 30 -200 30 {
lab=bn0}
N 100 30 120 30 {
lab=bn}
N 260 30 280 30 {
lab=bn}
N -160 30 -140 30 { lab=avss}
N -480 -30 -480 0 {
lab=y0}
N -160 -30 -160 0 {
lab=y1}
N 160 -30 160 0 {
lab=y2}
N -480 60 -480 70 {
lab=avss}
N -460 70 -160 70 {
lab=avss}
N -160 60 -160 70 {
lab=avss}
N -140 70 0 70 {
lab=avss}
N 160 60 160 70 {
lab=avss}
N 180 70 320 70 {
lab=avss}
N 320 60 320 70 {
lab=avss}
N 320 -30 320 0 {
lab=ion}
N 320 -30 340 -30 {
lab=ion}
N -480 -150 -480 -120 {
lab=X}
N -320 -150 -320 -120 {
lab=bn0}
N 100 -150 100 30 {
lab=bn}
N -260 -150 -240 -150 {
lab=bn0}
N 260 -150 280 -150 {
lab=bn}
N -160 -30 -140 -30 {
lab=y1}
N 160 -30 180 -30 {
lab=y2}
N -500 70 -480 70 { lab=avss}
N 100 -150 260 -150 {
lab=bn}
N 260 -150 260 30 {
lab=bn}
N -60 30 -40 30 { lab=enb}
N 0 60 0 70 {
lab=avss}
N 0 -150 0 0 {
lab=bn}
N 0 -150 100 -150 {
lab=bn}
N 20 70 160 70 {
lab=avss}
N -140 30 -140 70 {
lab=avss}
N 20 30 20 70 {
lab=avss}
N 0 30 20 30 {
lab=avss}
N 160 30 180 30 {
lab=avss}
N 180 30 180 70 {
lab=avss}
N 320 30 340 30 {
lab=avss}
N 340 30 340 70 {
lab=avss}
N 320 70 340 70 {
lab=avss}
N -460 30 -460 70 {
lab=avss}
N -480 30 -460 30 {
lab=avss}
N -320 -440 -320 -150 {
lab=bn0}
N -480 -340 -480 -150 {
lab=X}
N -260 -90 -220 -90 {
lab=bn0}
N -160 -60 -160 -30 {
lab=y1}
N 160 -60 160 -30 {
lab=y2}
N -160 70 -140 70 {
lab=avss}
N 0 70 20 70 {
lab=avss}
N 160 70 180 70 {
lab=avss}
N -480 70 -460 70 {
lab=avss}
N -480 -30 -300 -30 {lab=y0}
N -480 -340 -460 -340 {
lab=X}
N -480 -350 -480 -340 {
lab=X}
C {n1_2.sym} -500 30 0 0 {name=x0e[3:0]}
C {n1_2.sym} -180 30 0 0 {name=x2e[1:0]}
C {n1_2.sym} 140 30 0 0 {name=x4e[1:0]}
C {n2_2.sym} 300 30 0 0 {name=x5e[1:0]}
C {devices/lab_pin.sym} 340 -30 2 0 {name=lavss16 sig_type=std_logic lab=ion}
C {devices/lab_pin.sym} -240 -150 2 0 {name=lavss19 sig_type=std_logic lab=bn0}
C {devices/lab_pin.sym} 280 -150 2 0 {name=lavss20 sig_type=std_logic lab=bn}
C {devices/lab_pin.sym} -300 -30 2 0 {name=lavss21 sig_type=std_logic lab=y0}
C {devices/lab_pin.sym} -140 -30 2 0 {name=lavss22 sig_type=std_logic lab=y1}
C {devices/lab_pin.sym} 180 -30 2 0 {name=lavss23 sig_type=std_logic lab=y2}
C {devices/lab_pin.sym} -500 70 2 1 {name=lavss25 sig_type=std_logic lab=avss}
C {n1_1.sym} -20 30 0 0 {name=x3e[1:0]}
C {devices/lab_pin.sym} -60 30 2 1 {name=lavss37 sig_type=std_logic lab=enb}
C {devices/iopin.sym} -710 -190 2 1 {name=pavss lab=avss}
C {devices/iopin.sym} -710 -290 2 1 {name=pim lab=ion}
C {devices/iopin.sym} -710 20 2 1 {name=pbnb lab=bn}
C {devices/ipin.sym} -660 -80 2 1 {name=penb lab=enb}
C {devices/lab_pin.sym} -460 -340 2 0 {name=lavss1 sig_type=std_logic lab=X}
C {devices/iopin.sym} -710 40 2 1 {name=pbnb1 lab=bn0}
C {devices/iopin.sym} -720 80 2 1 {name=pim1 lab=y0}
C {devices/iopin.sym} -720 100 2 1 {name=pim2 lab=y1}
C {devices/iopin.sym} -720 120 2 1 {name=pim3 lab=y2}
C {devices/iopin.sym} -720 140 2 1 {name=pim4 lab=X}
