# 2025-02-17T13:08:34.938590
import vitis

client = vitis.create_client()
client.set_workspace(path="RV32Rocket")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../BD_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

platform = client.get_component(name="platform")
domain = platform.get_domain(name="standalone_psu_cortexa53_0")

status = domain.set_config(option = "os", param = "standalone_stdin", value = "psu_uart_1")

status = domain.set_config(option = "os", param = "standalone_stdout", value = "psu_uart_1")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

