module level_up_shifter (
`ifdef USE_POWER_PINS
    inout VDD1,
    inout VDD2,
    inout VSS,
`endif
    inout A,
    inout B
);
endmodule
