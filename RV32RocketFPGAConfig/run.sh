rm *.log *.jou *.str
#vivado -mode batch -source build.tcl -nojournal
vivado -source build.tcl -nojournal

rm RV32Rocket -rf