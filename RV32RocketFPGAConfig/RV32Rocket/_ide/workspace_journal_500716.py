# 2025-02-17T14:08:54.314110
import vitis

client = vitis.create_client()
client.set_workspace(path="RV32Rocket")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../BD_wrapper.xsa")

status = platform.build()

status = platform.build()

status = platform.build()

vitis.dispose()

