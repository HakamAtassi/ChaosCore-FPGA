# 2025-03-24T14:15:36.854257
import vitis

client = vitis.create_client()
client.set_workspace(path="ChaosCoreSW")

platform = client.get_component(name="ChaosCorePlatform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ChaosCore/BD_wrapper_Dual_Uart.xsa")

domain = platform.get_domain(name="standalone_psu_cortexa53_0")

status = domain.set_config(option = "os", param = "standalone_stdin", value = "psu_uart_0")

status = domain.set_config(option = "os", param = "standalone_stdout", value = "psu_uart_0")

status = platform.build()

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../ChaosCore/BD_wrapper_Dual_Uart.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

