# 2025-03-22T12:49:11.509496
import vitis

client = vitis.create_client()
client.set_workspace(path="ChaosCoreSW")

platform = client.get_component(name="ChaosCorePlatform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ChaosCore/BD_wrapper_UARTDebug.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ChaosCore/BD_wrapper.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ChaosCore/BD_wrapper_UARTDebug.xsa")

status = platform.build()

vitis.dispose()

