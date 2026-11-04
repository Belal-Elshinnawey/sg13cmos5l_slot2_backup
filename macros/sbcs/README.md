# ihp-sg13cmos5l SBCS (Self-Biased Current Source)

This is the analog **sub-macro** `sbcs` of the Chipalooza analog project template: a self-biased current source for the ihp-sg13cmos5l Open-PDK, designed by Luis Henrique Rodovalho. The hand-drawn top level that embeds it, including the chip-level power straps and the PR boundary, lives one directory up in [`sg13cmos5l_chipalooza_analog_project`](../../README.md).

Everything here runs inside the [IIC-OSIC-TOOLS](https://github.com/iic-jku/IIC-OSIC-TOOLS) container, which ships every tool this macro needs: Xschem, ngspice, Magic, Netgen, KLayout and the `sak-*` helper scripts.

`sbcs` generates a PVT-stable bias current without a bandgap voltage reference, deriving its own operating point through positive feedback (self-biasing). It is enabled/disabled through a digital `en`/`enb` pair and delivers a differential current output `iop`/`ion`.

| Pin | Direction | Description |
| --- | --- | --- |
| `iop` | inout | current output (+) |
| `ion` | inout | current output (−) |
| `avdd` | inout | analog supply |
| `avss` | inout | analog ground |
| `vsub` | inout | substrate/bulk tie |
| `en` | in | enable |
| `enb` | in | enable, complement |

> [!NOTE]
> This macro currently has **no layout**. The schematic (`schematic/xschem/`) and the transient/supply-sweep testbenches (`testbenches/xschem/`) are signed off; `layout/`, `netlist/`, `verification/` and `final/` are produced once the layout is drawn and the Magic/KLayout DRC, LVS and PEX flow is run inside the IIC-OSIC-TOOLS container (see the Makefile targets below).


## Directory Structure

```text
📁 sbcs/
├─ 📁 schematic/
│  └─ 📁 xschem/
│     ├─ sbcs.sch                    # top-level current-source schematic
│     ├─ sbcs.sym
│     ├─ sbcs_slice.sch / .sym       # one bias slice, instantiated twice by sbcs.sch
│     ├─ n1_1 … n8_1, p1_1 … p8_1    # device-multiplication composite subcells
│     └─ xschemrc
├─ 📁 scripts/
│  └─ check_pex_ports.py
├─ 📁 testbenches/
│  └─ 📁 xschem/
│     ├─ 📁 plot_simulations/
│     │  ├─ 📁 data/
│     │  ├─ 📁 figures/
│     │  ├─ ngspice2python.py
│     │  └─ plot_sbcs.py
│     ├─ tb_sbcs_tran.sch            # startup/enable transient
│     ├─ tb_sbcs_vsweep.sch          # output current vs. supply voltage
│     └─ xschemrc
├─ Makefile
└─ README.md
```


## Makefile Targets

The Makefile is identical in structure to the [`inverter`](../inverter/README.md) sub-macro's (same variables, same targets) with `TOP = sbcs`:

```sh
make                                # help: all targets and variables
make sim-xschem TB=tb_sbcs_tran     # transient testbench
make sim-xschem TB=tb_sbcs_vsweep   # supply-sweep testbench
make sim-view-xschem                # plot both with plot_sbcs.py
make sim-all                        # run both testbenches and plot
make magic-verify CELL=sbcs         # DRC + LVS + PEX with Magic (once layout/sbcs.gds exists)
make klayout-verify CELL=sbcs       # DRC + LVS with KLayout (once layout/sbcs.gds exists)
make build-top                      # LEF, LIB, Verilog stub, copy GDS, render (once signed off)
make all                            # verify + build + simulate
make clean                          # delete generated files
```

See [`macros/inverter/README.md`](../inverter/README.md) for the full reference of every target and parameter (`CELL`, `EXT_MODE`, `THRESHOLD`, `MINRES`, `MINDELAY`, `DRC_LEVEL`, `EV_PRECISION`, `TB`, `SCRIPT`, `OPEN_ARGS`).
