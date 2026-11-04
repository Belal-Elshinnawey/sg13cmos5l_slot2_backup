v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 -110 -100 -110 {
lab=bn0}
N -100 -110 -100 -50 {
lab=bn0}
N -120 -50 -100 -50 {
lab=bn0}
N 260 -50 280 -50 {
lab=bn}
N -320 -50 -300 -50 { lab=avss}
N 0 -50 20 -50 { lab=avss}
N 320 -50 340 -50 { lab=avss}
N 0 10 0 40 {
lab=y1}
N 320 10 320 40 {
lab=y2}
N -320 10 -160 10 {
lab=y0}
N -160 -20 -160 10 {
lab=y0}
N -160 -110 -160 -80 {
lab=bn0}
N 260 -110 260 -50 {
lab=bn}
N -100 -110 -80 -110 {
lab=bn0}
N -160 10 -140 10 {
lab=y0}
N 0 10 20 10 {
lab=y1}
N 320 10 340 10 {
lab=y2}
N -180 -50 -160 -50 { lab=avss}
N 0 -110 0 -80 {
lab=bn}
N 260 -110 440 -110 {
lab=bn}
N 0 -110 260 -110 {
lab=bn}
N -100 -50 -40 -50 {
lab=bn0}
N -320 -20 -320 10 {
lab=y0}
N 0 -20 0 10 {
lab=y1}
N 320 -20 320 10 {
lab=y2}
N 320 -90 320 -80 {lab=bp0}
N -390 -50 -360 -50 {lab=#net1}
N -390 -120 -390 -50 {lab=#net1}
N -390 -120 -320 -120 {lab=#net1}
N -320 -120 -320 -80 {lab=#net1}
C {devices/iopin.sym} -480 -140 2 1 {name=pavdd lab=y2}
C {devices/iopin.sym} -480 -110 2 1 {name=pavss lab=avss}
C {devices/iopin.sym} -480 40 2 1 {name=pbpa lab=bn0}
C {devices/iopin.sym} -480 70 2 1 {name=pbpb lab=bn}
C {n2_1.sym} -340 -50 0 0 {name=x0d[1:0]}
C {n2_1.sym} -140 -50 0 1 {name=x1d[1:0]}
C {n2_1.sym} -20 -50 0 0 {name=x2d[1:0]}
C {n2_1.sym} 300 -50 0 0 {name=x4d[1:0]}
C {devices/lab_pin.sym} -300 -50 2 0 {name=lavss3 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 20 -50 2 0 {name=lavss5 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 340 -50 2 0 {name=lavss8 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -80 -110 2 0 {name=lavss19 sig_type=std_logic lab=bn0}
C {devices/lab_pin.sym} 440 -110 2 0 {name=lavss20 sig_type=std_logic lab=bn}
C {devices/lab_pin.sym} -140 10 2 0 {name=lavss21 sig_type=std_logic lab=y0}
C {devices/lab_pin.sym} 20 10 2 0 {name=lavss22 sig_type=std_logic lab=y1}
C {devices/lab_pin.sym} 340 10 2 0 {name=lavss23 sig_type=std_logic lab=y2}
C {devices/lab_pin.sym} -180 -50 2 1 {name=lavss1 sig_type=std_logic lab=avss}
C {devices/iopin.sym} -480 -160 2 1 {name=pavdd1 lab=y1}
C {devices/iopin.sym} -480 -180 2 1 {name=pavdd2 lab=y0}
C {devices/lab_pin.sym} 320 -90 2 0 {name=lavss2 sig_type=std_logic lab=bp0}
C {devices/iopin.sym} -480 90 2 1 {name=pbpb1 lab=bp0}
C {devices/lab_pin.sym} -330 -120 2 0 {name=x sig_type=std_logic lab=x}
