rm *.log *.jou *.str
rm RV32Rocket/RV32Rocket.cache -rf   # Delete previous project build.
rm RV32Rocket/RV32Rocket.gen -rf
rm RV32Rocket/RV32Rocket.ip_user_files -rf
rm RV32Rocket/RV32Rocket.runs -rf
rm RV32Rocket/RV32Rocket.sim -rf
rm RV32Rocket/RV32Rocket.hw -rf
rm RV32Rocket/BD_wrapper.xsa
rm RV32Rocket/RV32Rocket.ioplanning -rf

vivado -mode batch -source build.tcl -nojournal # run fully in GUI 
#vivado -source build.tcl -nojournal    # open vivado 

