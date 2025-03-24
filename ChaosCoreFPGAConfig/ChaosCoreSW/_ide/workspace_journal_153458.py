# 2025-03-20T13:53:52.651717
import vitis

client = vitis.create_client()
client.set_workspace(path="ChaosCoreSW")

platform = client.get_component(name="ChaosCorePlatform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ChaosCore/BD_wrapper_UARTDebug.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

vitis.dispose()

