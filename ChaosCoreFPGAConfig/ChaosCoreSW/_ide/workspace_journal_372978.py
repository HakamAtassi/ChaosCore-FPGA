# 2025-03-27T18:50:40.794405
import vitis

client = vitis.create_client()
client.set_workspace(path="ChaosCoreSW")

platform = client.get_component(name="ChaosCorePlatform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ChaosCore/BD_wrapper_oldCore.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

vitis.dispose()

