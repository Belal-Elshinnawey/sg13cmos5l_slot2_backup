v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -250 -260 -230 -260 {
lab=bp}
N -230 -260 -230 -200 {
lab=bp}
N -70 -260 -70 -200 {
lab=bp}
N -90 -260 -70 -260 {
lab=bp}
N 450 -260 470 -260 {
lab=bp}
N 450 -260 450 -200 {
lab=bp}
N -150 -300 -130 -300 {
lab=avdd}
N -130 -300 -130 -290 {
lab=avdd}
N 10 -300 30 -300 {
lab=avdd}
N 30 -300 30 -290 {
lab=avdd}
N 350 -300 350 -290 {
lab=avdd}
N 370 -300 510 -300 {
lab=avdd}
N 510 -300 510 -290 {
lab=avdd}
N 510 -230 510 -200 {
lab=iop}
N 510 -200 530 -200 {
lab=iop}
N 450 -200 470 -200 {
lab=bp}
N 130 -260 150 -260 { lab=en}
N 110 -140 130 -140 { lab=enb}
N 190 -300 190 -290 {
lab=avdd}
N -230 -200 -70 -200 {
lab=bp}
N 350 -140 370 -140 {
lab=bp0}
N 190 -110 190 -80 {
lab=bp0}
N 130 -140 150 -140 {
lab=enb}
N 130 -140 130 -20 {
lab=enb}
N 130 -20 150 -20 {
lab=enb}
N 190 -80 190 -50 {
lab=bp0}
N 70 -260 90 -260 {
lab=bp}
N 90 -260 90 -200 {
lab=bp}
N 30 -230 30 60 {
lab=x2}
N 190 -140 210 -140 { lab=avdd}
N -70 -200 90 -200 {
lab=bp}
N 90 -200 180 -200 {
lab=bp}
N 180 -210 180 -200 {
lab=bp}
N 180 -210 190 -210 {
lab=bp}
N 190 -230 190 -210 {
lab=bp}
N 190 -210 190 -200 {
lab=bp}
N 190 -200 190 -170 {
lab=bp}
N 30 -300 190 -300 {
lab=avdd}
N 210 -300 350 -300 {
lab=avdd}
N 290 -260 290 -200 {
lab=bp}
N 290 -260 310 -260 {
lab=bp}
N 190 -200 290 -200 {
lab=bp}
N 290 -200 450 -200 {
lab=bp}
N 210 -20 210 20 {
lab=avss}
N 190 -20 210 -20 {
lab=avss}
N 190 20 210 20 {
lab=avss}
N -310 -300 -290 -300 {
lab=avdd}
N -330 -300 -310 -300 {
lab=avdd}
N -310 -300 -310 -260 {
lab=avdd}
N -310 -260 -290 -260 {
lab=avdd}
N -150 -300 -150 -260 {
lab=avdd}
N -150 -260 -130 -260 {
lab=avdd}
N 10 -300 10 -260 {
lab=avdd}
N 10 -260 30 -260 {
lab=avdd}
N 190 -260 210 -260 {
lab=avdd}
N 210 -300 210 -260 {
lab=avdd}
N 350 -260 370 -260 {
lab=avdd}
N 370 -300 370 -260 {
lab=avdd}
N 510 -260 530 -260 {
lab=avdd}
N 530 -300 530 -260 {
lab=avdd}
N 510 -300 530 -300 {
lab=avdd}
N 190 -80 350 -80 {
lab=bp0}
N -130 -230 -130 60 {
lab=x1}
N -290 -300 -290 -290 {
lab=avdd}
N -290 -140 -270 -140 {
lab=x}
N 350 -230 350 -140 {
lab=bp0}
N -290 -300 -150 -300 {
lab=avdd}
N -130 -300 10 -300 {
lab=avdd}
N 190 -300 210 -300 {
lab=avdd}
N 350 -300 370 -300 {
lab=avdd}
N 350 -140 350 -80 {
lab=bp0}
N -290 -230 -290 -140 {
lab=x}
N 190 10 190 20 {lab=avss}
N 110 20 190 20 {
lab=avss}
C {devices/iopin.sym} -450 30 2 1 {name=pavdd lab=avdd}
C {devices/iopin.sym} -450 60 2 1 {name=pavss lab=avss}
C {devices/iopin.sym} -450 -70 2 1 {name=pip lab=iop}
C {devices/lab_pin.sym} -330 -300 2 1 {name=lavdd1 sig_type=std_logic lab=avdd}
C {devices/iopin.sym} -450 210 2 1 {name=pbpa lab=bp0}
C {devices/iopin.sym} -450 240 2 1 {name=pbpb lab=bp}
C {devices/ipin.sym} -400 140 2 1 {name=pen lab=en}
C {devices/ipin.sym} -400 170 2 1 {name=penb lab=enb}
C {p2_2.sym} -270 -260 0 1 {name=x0a[1:0]}
C {p1_4.sym} -110 -260 0 1 {name=x1a[1:0]}
C {p1_4.sym} 50 -260 0 1 {name=x2a[1:0]}
C {p1_4.sym} 330 -260 0 0 {name=x4a[1:0]}
C {p2_2.sym} 490 -260 0 0 {name=x5a[1:0]}
C {devices/lab_pin.sym} 530 -200 2 0 {name=lavss17 sig_type=std_logic lab=iop}
C {devices/lab_pin.sym} 370 -140 2 0 {name=lavss18 sig_type=std_logic lab=bp0}
C {devices/lab_pin.sym} 470 -200 2 0 {name=lavss4 sig_type=std_logic lab=bp}
C {p1_1.sym} 170 -260 0 0 {name=x3a[1:0]}
C {devices/lab_pin.sym} 130 -260 2 1 {name=lavss26 sig_type=std_logic lab=en}
C {devices/lab_pin.sym} 110 -140 2 1 {name=lavss27 sig_type=std_logic lab=enb}
C {n1_1.sym} 170 -20 0 0 {name=x3c[1:0]}
C {devices/lab_pin.sym} 110 20 2 1 {name=lavss31 sig_type=std_logic lab=avss}
C {p1_1.sym} 170 -140 0 0 {name=x3b[1:0]}
C {devices/lab_pin.sym} 210 -140 2 0 {name=lavss32 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -270 -140 2 0 {name=lavss2 sig_type=std_logic lab=x}
C {devices/iopin.sym} -310 -60 2 1 {name=pbpa1 lab=x}
C {devices/iopin.sym} -130 60 2 1 {name=pbpa2 lab=x1}
C {devices/iopin.sym} 30 60 2 1 {name=pbpa3 lab=x2}
