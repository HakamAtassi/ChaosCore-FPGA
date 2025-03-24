# 2025-03-23T20:59:54.303079
import vitis

client = vitis.create_client()
client.set_workspace(path="ChaosCoreSW")

platform = client.get_component(name="ChaosCorePlatform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ChaosCore/BD_wrapper_UARTDebug.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="xdppsu_intr_example")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="xdpdma_video_example")
comp.build()

vitis.dispose()

