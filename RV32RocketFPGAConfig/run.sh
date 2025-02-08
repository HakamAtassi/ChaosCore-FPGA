rm *.log *.jou *.str
rm RV32Rocket -rf   # Delete previous project build.

#vivado -mode batch -source build.tcl -nojournal # run fully in GUI 
vivado -source build.tcl -nojournal    # open vivado 

