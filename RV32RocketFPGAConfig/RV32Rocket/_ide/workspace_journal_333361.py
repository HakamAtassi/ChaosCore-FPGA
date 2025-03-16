# 2025-03-15T16:21:26.017756
import vitis

client = vitis.create_client()
client.set_workspace(path="RV32Rocket")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../hp1_wsmc.xsa")

status = platform.build()

vitis.dispose()

