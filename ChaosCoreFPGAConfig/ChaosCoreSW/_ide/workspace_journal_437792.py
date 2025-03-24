# 2025-03-22T13:37:29.198681
import vitis

client = vitis.create_client()
client.set_workspace(path="ChaosCoreSW")

platform = client.get_component(name="ChaosCorePlatform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ChaosCore/BD_wrapper_UARTDebug.xsa")

status = platform.build()

vitis.dispose()

