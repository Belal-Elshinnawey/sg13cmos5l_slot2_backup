# -*- coding: utf-8 -*-
# SPDX-FileCopyrightText: 2026 Luis Henrique Rodovalho
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
# Description: Transient and supply-sweep plots for the sbcs macro based on ngspice exports.
# ============================================

# Imports
import os
import numpy as np
import matplotlib.pyplot as plt
import ngspice2python as ng
from pathlib import Path
# ============================================

# Plotting Configuration
# ============================================
# Interactive mode stays off: the plt.show() at the end of main() then blocks in the GUI
# event loop, which is what draws the windows in the first place. With plt.ion() the call
# returns immediately and nothing pumps that loop afterwards, so no window ever appears.
plt.close("all")

# Pure Matplotlib text rendering (no external LaTeX dependency)
plt.rcParams.update({
    "text.usetex": False,
    "mathtext.fontset": "cm",
    "font.family": "serif",
    "font.size": 14,
})
# =========================================================================

def main():
    # Resolve data and output paths relative to this script
    script_dir = Path(__file__).resolve().parent
    data_dir = script_dir / "data"
    figures_dir = script_dir / "figures"
    figures_dir.mkdir(parents=True, exist_ok=True)

    # ------------------------------------------------------------------
    # 1. Load ngspice transient simulation data (startup/enable transient)
    # ------------------------------------------------------------------
    ngspice_file_tran = data_dir / "tb_sbcs_tran.txt"

    time = ng.loadngspicecol(str(ngspice_file_tran), "time")
    io_tran = ng.loadngspicecol(str(ngspice_file_tran), "io") * 1e6

    # ------------------------------------------------------------------
    # 2. Transient Plot
    # ------------------------------------------------------------------
    tran_color = '#0c5da5'

    fig1, ax1 = plt.subplots(figsize=(10, 6.2))
    fig1.suptitle('SBCS - Transient Response (en/enb Toggled)')

    ax1.plot(time * 1e6, io_tran, color=tran_color, linewidth=2.2)
    ax1.set_xlabel(r'$t$ ($\mathrm{\mu s}$)')
    ax1.set_ylabel(r'$I_\mathrm{o}$ ($\mathrm{\mu A}$)')
    ax1.grid(visible=True, which='major', linestyle='--', alpha=0.45)
    plt.tight_layout()

    # ------------------------------------------------------------------
    # 3. Export transient figures and CSV
    # ------------------------------------------------------------------
    fig1.savefig(str(figures_dir / "tb_sbcs_tran.svg"), bbox_inches='tight')
    fig1.savefig(str(figures_dir / "tb_sbcs_tran.pdf"), bbox_inches='tight')
    np.savetxt(str(figures_dir / "tb_sbcs_tran.csv"),
               np.column_stack((time, io_tran)), comments="",
               header="time,io_uA", delimiter=",")

    # ------------------------------------------------------------------
    # 4. Load ngspice supply-sweep simulation data
    # ------------------------------------------------------------------
    ngspice_file_vsweep = data_dir / "tb_sbcs_vsweep.txt"

    avdd = ng.loadngspicecol(str(ngspice_file_vsweep), "v(avdd)")
    io_vsweep = ng.loadngspicecol(str(ngspice_file_vsweep), "io") * 1e6

    # ------------------------------------------------------------------
    # 5. Supply-Sweep Plot (line sensitivity)
    # ------------------------------------------------------------------
    vsweep_color = '#ff6b35'

    fig2, ax2 = plt.subplots(figsize=(10, 6.2))
    fig2.suptitle('SBCS - Output Current vs. Supply Voltage')

    ax2.plot(avdd, io_vsweep, color=vsweep_color, linewidth=2.2)
    ax2.set_xlabel(r'$V_\mathrm{DD}$ (V)')
    ax2.set_ylabel(r'$I_\mathrm{o}$ ($\mathrm{\mu A}$)')
    ax2.grid(visible=True, which='major', linestyle='--', alpha=0.45)
    plt.tight_layout()

    # ------------------------------------------------------------------
    # 6. Export supply-sweep figures and CSV
    # ------------------------------------------------------------------
    fig2.savefig(str(figures_dir / "tb_sbcs_vsweep.svg"), bbox_inches='tight')
    fig2.savefig(str(figures_dir / "tb_sbcs_vsweep.pdf"), bbox_inches='tight')
    np.savetxt(str(figures_dir / "tb_sbcs_vsweep.csv"),
               np.column_stack((avdd, io_vsweep)), comments="",
               header="vdd,io_uA", delimiter=",")

    # ------------------------------------------------------------------
    # 7. Open the plot windows (blocks until they are closed)
    # ------------------------------------------------------------------
    # Only open the interactive window when requested (sim-view-xschem sets
    # SHOW_PLOTS=1); batch/headless runs just save the figures and exit.
    if os.environ.get("SHOW_PLOTS"):
        plt.show()
    # =========================================================================

# Main Execution
if __name__ == '__main__':
    main()
# =========================================================================
