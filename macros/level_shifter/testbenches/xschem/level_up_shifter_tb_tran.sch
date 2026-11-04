v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -490 620 -490 {lab=GND}
N 340 -430 340 -250 {lab=A}
N 340 -250 520 -250 {lab=A}
N 460 -430 460 -330 {lab=#net1}
N 460 -330 560 -330 {lab=#net1}
N 620 -430 620 -330 {lab=#net2}
N 620 -330 640 -330 {lab=#net2}
N 600 -170 600 -150 {lab=GND}
N 680 -250 720 -250 {lab=B}
C {devices/gnd.sym} 300 -490 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 600 -150 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 340 -460 2 0 {name=v_a value="pulse(0 1.2 1u 10n 10n 1u 2u)"}
C {devices/vsource.sym} 460 -460 2 0 {name=v_vdd1 value="dc 1.2"}
C {devices/vsource.sym} 620 -460 2 0 {name=v_vdd2 value="dc 3.3"}
C {level_up_shifter_pex.sym} 600 -250 0 0 {name=x1}
C {devices/code_shown.sym} 30 -650 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.include ../../../netlist/pex/level_up_shifter_magic_pex_3.spice
"}
C {devices/code_shown.sym} 720 -650 0 0 {name=NGSPICE only_toplevel=true value="
.options klu reltol=1e-3 abstol=1e-12 vntol=1e-6 gmin=1e-12
.control
  tran 10n 5u
  set wr_vecnames
  set wr_singlescale
  wrdata ../plot_simulations/data/@schname\\\\.txt v(A) v(B)
  plot V(A) V(B)
.endc
"}
C {devices/launcher.sym} 720 -800 0 0 {name=h2
descr="Simulate"
tclcommand="xschem save; xschem set netlist_type spice; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 720 -760 0 0 {name=h1
descr="Load waves"
tclcommand="xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran"
}
C {lab_pin.sym} 470 -250 1 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 710 -250 2 0 {name=p2 sig_type=std_logic lab=B}
