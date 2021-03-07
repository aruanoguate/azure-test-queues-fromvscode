# Create Storage Account
az storage account create --name mystoragemar72021 -g learn-8b529a3b-30e9-4a94-a30e-a6b89ee81906 --kind StorageV2 --sku Standard_LRS

# Get Connection String
az storage account show-connection-string --name mystoragemar72021 --resource-group learn-8b529a3b-30e9-4a94-a30e-a6b89ee81906

# Peek the messages in the queue
AZURE_STORAGE_CONNECTION_STRING="DefaultEndpointsProtocol=https;EndpointSuffix=core.windows.net;AccountName=mystoragemar72021;AccountKey=FTLX2IK7oaophgq83voHtzMQaJsSeAVB+ThczBImz3OIwT7zbG/+utrisccfbpmSpAZzf6Zch/zcqtB6+iwxbA=="
az storage message peek --queue-name newsqueue --connection-string $AZURE_STORAGE_CONNECTION_STRING