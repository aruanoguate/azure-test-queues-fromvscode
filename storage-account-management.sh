# Create Storage Account
az storage account create --name mystoragemar72021 -g learn-8b529a3b-30e9-4a94-a30e-a6b89ee81906 --kind StorageV2 --sku Standard_LRS

# Get Connection String
az storage account show-connection-string --name mystoragemar72021 --resource-group learn-8b529a3b-30e9-4a94-a30e-a6b89ee81906