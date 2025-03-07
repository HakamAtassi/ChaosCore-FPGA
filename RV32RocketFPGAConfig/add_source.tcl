set lib_dir [file normalize "/mnt/Storage/SCHOOL/Capstone/ChaosCore-chipyard/sims/verilator/generated-src/chipyard.harness.TestHarness.RV32RocketFPGAConfig/gen-collateral"]
set constraints_dir [file normalize "./constraints"]

# add sources
set fp [open "$lib_dir/../chipyard.harness.TestHarness.RV32RocketFPGAConfig.all.f" r]
   while {[gets $fp line] >= 0} {
   read_verilog -sv "$line"
}
