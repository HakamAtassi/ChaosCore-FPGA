# 2025-03-15T14:02:52.202946
import vitis

client = vitis.create_client()
client.set_workspace(path="RV32Rocket")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../hp1_mem.xsa")

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

