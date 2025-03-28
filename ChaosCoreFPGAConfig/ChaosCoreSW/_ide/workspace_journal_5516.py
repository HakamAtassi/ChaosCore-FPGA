# 2025-03-27T18:59:33.917881
import vitis

client = vitis.create_client()
client.set_workspace(path="ChaosCoreSW")

platform = client.get_component(name="ChaosCorePlatform")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

vitis.dispose()

