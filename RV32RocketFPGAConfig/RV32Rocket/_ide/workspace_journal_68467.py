# 2025-02-17T19:01:16.991073
import vitis

client = vitis.create_client()
client.set_workspace(path="RV32Rocket")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../BD_wrapper.xsa")

status = platform.build()

vitis.dispose()

