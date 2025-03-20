# 2025-03-19T23:16:54.439302
import vitis

client = vitis.create_client()
client.set_workspace(path="ChaosCoreSW")

platform = client.create_platform_component(name = "ChaosCorePlatform",hw_design = "$COMPONENT_LOCATION/../../ChaosCore/BD_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

platform = client.get_component(name="ChaosCorePlatform")
domain = platform.get_domain(name="zynqmp_fsbl")

status = domain.set_config(option = "os", param = "standalone_stdin", value = "psu_uart_1")

status = domain.set_config(option = "os", param = "standalone_stdout", value = "psu_uart_1")

domain = platform.get_domain(name="standalone_psu_cortexa53_0")

status = domain.set_config(option = "os", param = "standalone_stdin", value = "psu_uart_1")

status = domain.set_config(option = "os", param = "standalone_stdout", value = "psu_uart_1")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../ChaosCorePlatform/export/ChaosCorePlatform/ChaosCorePlatform.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

domain = platform.get_domain(name="zynqmp_fsbl")

status = domain.set_config(option = "os", param = "standalone_stdin", value = "psu_uart_0")

status = domain.set_config(option = "os", param = "standalone_stdout", value = "psu_uart_0")

status = platform.build()

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

