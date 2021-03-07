# Create Storage Account
az storage account create --name mystoragemar62021 -g learn-b9f8ca4b-adfa-4257-9da5-d2c6a8dd2ebd --kind StorageV2 --sku Standard_LRS

# Get Connection String
az storage account show-connection-string --name mystoragemar62021 --resource-group learn-b9f8ca4b-adfa-4257-9da5-d2c6a8dd2ebd