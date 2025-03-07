# 2025-03-01T18:36:02.015722
import vitis

client = vitis.create_client()
client.set_workspace(path="RV32Rocket")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../BD_wrapper.xsa")

status = platform.build()

vitis.dispose()

