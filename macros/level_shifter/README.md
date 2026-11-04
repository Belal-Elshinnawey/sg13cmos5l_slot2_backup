# level_shifter

Ported from the HeiChips `heichips26-on-off` project's `ook_analog_system` macro (`level_up_shifter`, by Simon Dorrer). Only the Xschem schematic and symbol were copied over — no layout, testbench, or verification artifacts have been ported yet.

## Pinout

| Pin  | Direction | Description |
|------|-----------|--------------|
| A    | in        | Low-voltage-domain logic input (VDD1 level) |
| B    | out       | High-voltage-domain logic output (VDD2 level) |
| VDD1 | inout     | Low-side supply (must be < VDD2) |
| VDD2 | inout     | High-side supply |
| VSS  | inout     | Ground |

No static power consumption; built from three inverters plus a cross-coupled-PMOS latch. HV devices (M1, M2, M5-M8, M21, M22) sit between the LV logic stage and the VDD2-referenced latch/output stage; see the in-schematic notes for sizing rationale.

**Known issue carried over from the source file:** `M1`-`M4` use the `sg13g2_pr/` device library prefix, while every other transistor (`M5` onward) uses `sg13cmos5l_pr/`. This inconsistency existed in the original `level_up_shifter.sch` and was preserved as-is during the port. `sg13g2_pr` likely won't resolve against this repo's PDK setup -- fix by changing `M1`-`M4` to `sg13cmos5l_pr/` before netlisting.

## Directory structure

```
level_shifter/
├── Makefile
├── README.md
└── schematic/
    └── xschem/
        ├── xschemrc
        ├── level_up_shifter.sch
        └── level_up_shifter.sym
```

`testbenches/`, `layout/`, and verification directories will be created by the Makefile targets as needed, same as the other sub-macros in this repo.
