# 2025-03-26T12:48:54.549459
import vitis

client = vitis.create_client()
client.set_workspace(path="ChaosCoreSW")

vitis.dispose()

