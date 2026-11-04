v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -200 -450 -90 -450 { lab=GND}
N -540 -690 -500 -690 { lab=dig_in0}
N -540 -670 -500 -670 { lab=dig_in1}
N 80 -120 80 -100 { lab=GND}
N 80 -200 80 -180 { lab=vss_3v3}
N 240 -120 240 -100 { lab=GND}
N 80 -100 240 -100 { lab=GND}
N 80 -200 160 -200 { lab=vss_3v3}
N 240 -200 320 -200 { lab=vdd_3v3}
N 80 -100 80 -80 { lab=GND}
N 240 -200 240 -180 { lab=vdd_3v3}
N 440 -290 520 -290 { lab=dig_in0}
N 440 -290 440 -270 { lab=dig_in0}
N 600 -290 680 -290 { lab=dig_in1}
N 600 -290 600 -270 { lab=dig_in1}
N -100 -630 -100 -610 { lab=#net1}
N -100 -730 -100 -690 { lab=GND}
N -100 -730 -60 -730 { lab=GND}
N -160 -710 -160 -610 {
lab=#net1}
N -160 -610 -100 -610 {
lab=#net1}
N -200 -710 -160 -710 {
lab=#net1}
N -200 -730 -100 -730 {
lab=GND}
N 600 -210 600 -100 {
lab=GND}
N 440 -210 440 -100 {
lab=GND}
N -200 -470 -160 -470 {lab=vdd_1v2}
N 80 -590 80 -570 {lab=GND}
N 80 -690 80 -650 {lab=vdd_1v2}
N -200 -430 -180 -430 {lab=vdd_3v3}
N -90 -450 -90 -440 {lab=GND}
C {slot_2_pex.sym} -350 -570 0 0 {name=Xdut}
C {devices/lab_pin.sym} -180 -430 0 1 {name=lavss1 sig_type=std_logic lab=vdd_3v3}
C {devices/lab_pin.sym} -540 -690 0 0 {name=len1 sig_type=std_logic lab=dig_in0}
C {devices/lab_pin.sym} -540 -670 0 0 {name=lenb1 sig_type=std_logic lab=dig_in1}
C {devices/vsource.sym} 80 -150 0 0 {name=v_avss value=xavss}
C {devices/vsource.sym} 240 -150 0 0 {name=v_avdd value="dc \{xavdd\}"}
C {devices/lab_pin.sym} 320 -200 3 1 {name=lavdd0 sig_type=std_logic lab=vdd_3v3}
C {devices/vsource.sym} 440 -240 0 0 {name=v_en value="\{xen*xavdd\}
+ pwl(
+ 0      0
+ 1u     0
+ 1.1u   \{xavdd\}
+ 101.1u \{xavdd\}
+ 101.2u 0)"}
C {devices/lab_pin.sym} 520 -290 0 1 {name=len0 sig_type=std_logic lab=dig_in0}
C {devices/vsource.sym} 600 -240 0 0 {name=v_enb value="\{(1-xen)*xavdd\}
+ pwl(
+ 0      \{xavdd\}
+ 1u     \{xavdd\}
+ 1.1u   0
+ 101.1u 0
+ 101.2u \{xavdd\})
"}
C {devices/lab_pin.sym} 680 -290 0 1 {name=len2 sig_type=std_logic lab=dig_in1}
C {devices/vsource.sym} -100 -660 2 1 {name=v_o value="dc \{xvo\}"}
C {devices/vsource.sym} 80 -620 0 1 {name=v_vdd12 value="dc 1.2"}
C {devices/gnd.sym} 80 -570 0 0 {name=l2 lab=GND}
C {noconn.sym} -200 -490 0 1 {name=nc4 lab=dig_in[23..2]}
C {noconn.sym} -200 -510 0 1 {name=nc5 lab=dig_out[11..0]}
C {noconn.sym} -200 -530 0 1 {name=nc6 lab=ibias0}
C {noconn.sym} -200 -550 0 1 {name=nc7 lab=ibias1}
C {noconn.sym} -200 -570 0 1 {name=nc8 lab=analog_bus0}
C {noconn.sym} -200 -590 0 1 {name=nc9 lab=analog_bus1}
C {noconn.sym} -200 -610 0 1 {name=nc10 lab=analog_bus2}
C {noconn.sym} -200 -630 0 1 {name=nc11 lab=analog_bus3}
C {noconn.sym} -200 -650 0 1 {name=nc12 lab=enable}
C {noconn.sym} -200 -670 0 1 {name=nc13 lab=clk}
C {noconn.sym} -200 -690 0 1 {name=nc14 lab=reset}
C {devices/code_shown.sym} 30 -950 0 0 {name=header only_toplevel=false value="
.lib $PDK_ROOT/$PDK/libs.tech/ngspice/models/cornerMOShv.lib mos_tt
.lib $PDK_ROOT/$PDK/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
.include $PDK_ROOT/$PDK/libs.tech/ngspice/models/cap_cmomi.lib
.include ../../../netlist/pex/slot_2_magic_pex_3.spice
"
}
C {devices/code_shown.sym} 720 -520 0 0 {name=control only_toplevel=false value="
.option cshunt = 1e-15
.option gmin   = 1e-10
.control
  pre_osdi .lib $PDK_ROOT/$PDK/libs.tech/ngspice/models/osdi/psp103_nqs.osdi

  tran 10n 102u 10n uic
  let io = i(v_o)
  plot io ylimit 0 5u
  plot dig_in0

  meas tran io_before_disable find io at=101.09u

  set wr_vecnames
  set wr_singlescale
  wrdata ../plot_simulations/data/@schname\\\\.txt io
.endc
"}
C {devices/code_shown.sym} 440 -520 0 0 {name=params only_toplevel=false value="
.param xavdd = 3.3
.param xavss = 0
.param xvo   = 0
.param xen   = 1
"}
C {devices/lab_pin.sym} 140 -200 0 1 {name=lavss5 sig_type=std_logic lab=vss_3v3}
C {devices/lab_pin.sym} -160 -470 0 1 {name=lavdd2 sig_type=std_logic lab=vdd_1v2}
C {devices/lab_pin.sym} 80 -690 0 0 {name=lavdd3 sig_type=std_logic lab=vdd_1v2}
C {noconn.sym} -500 -710 2 1 {name=nc1 lab=reset}
C {noconn.sym} -500 -610 0 0 {name=nc3 lab=enable}
C {noconn.sym} -500 -630 0 0 {name=nc15 lab=clk}
C {noconn.sym} -500 -650 0 0 {name=nc16 lab=reset}
C {devices/gnd.sym} -90 -440 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 80 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 440 -100 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 600 -100 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -60 -730 0 0 {name=l6 lab=GND}
