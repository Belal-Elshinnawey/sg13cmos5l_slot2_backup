v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 320 -250 340 -250 {
lab=en}
N 420 -450 440 -450 {
lab=iop}
N 420 -430 440 -430 {
lab=ion}
N 320 -330 340 -330 {
lab=avdd}
N 320 -310 340 -310 {
lab=avss}
N 320 -230 340 -230 {
lab=enb}
N 320 -190 340 -190 {
lab=bp0}
N 320 -170 340 -170 {
lab=bp}
N 320 -150 340 -150 {
lab=bn}
N 520 -240 540 -240 {
lab=bp0}
N 540 -240 540 -230 {
lab=bp0}
N 540 -170 540 -160 {
lab=bn}
N 520 -160 540 -160 {
lab=bn}
N 550 -460 570 -460 {
lab=bp0}
N 570 -460 570 -450 {
lab=bp0}
N 540 -290 540 -280 {
lab=bn}
N 520 -280 540 -280 {
lab=bn}
N 570 -390 570 -380 {
lab=bn}
N 550 -380 570 -380 {
lab=bn}
N 520 -360 540 -360 {
lab=bp0}
N 540 -360 540 -350 {
lab=bp0}
C {devices/title.sym} 160 -40 0 0 {name=l6 author="Luis Henrique Rodovalho"}
C {devices/iopin.sym} 320 -330 2 0 {name=pavdd lab=avdd}
C {devices/iopin.sym} 320 -310 2 0 {name=pavss lab=avss}
C {devices/iopin.sym} 440 -450 2 1 {name=pip lab=iop}
C {devices/iopin.sym} 440 -430 2 1 {name=pim lab=ion}
C {devices/ipin.sym} 320 -250 2 1 {name=pen lab=en}
C {devices/ipin.sym} 320 -230 2 1 {name=penb lab=enb}
C {sbcs_slice.sym} 340 -130 0 0 {name=Xslice[7:0]}
C {devices/lab_pin.sym} 320 -190 0 0 {name=p1 sig_type=std_logic lab=bp0}
C {devices/lab_pin.sym} 320 -170 0 0 {name=p2 sig_type=std_logic lab=bp}
C {devices/lab_pin.sym} 320 -150 0 0 {name=p3 sig_type=std_logic lab=bn}
C {devices/lab_pin.sym} 520 -240 0 0 {name=p4 sig_type=std_logic lab=bp0}
C {devices/lab_pin.sym} 520 -160 0 0 {name=p5 sig_type=std_logic lab=bn}
C {sg13cmos5l_pr/cap_cmomi.sym} 540 -200 0 0 {name=C1
model=cap_cmomi
w=32e-6
l=32e-6
mmin=3
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
spice_ignore=true
}
C {devices/lab_pin.sym} 550 -460 0 0 {name=p6 sig_type=std_logic lab=bp0}
C {devices/lab_pin.sym} 520 -280 0 0 {name=p7 sig_type=std_logic lab=bn}
C {sg13cmos5l_pr/cap_cmomi.sym} 540 -320 0 0 {name=C2
model=cap_cmomi
w=32e-6
l=32e-6
mmin=3
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
spice_ignore=true
}
C {capa.sym} 570 -420 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {devices/lab_pin.sym} 550 -380 0 0 {name=p8 sig_type=std_logic lab=bn}
C {devices/lab_pin.sym} 520 -360 0 0 {name=p9 sig_type=std_logic lab=bp0}
