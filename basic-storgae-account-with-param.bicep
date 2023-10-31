// Define Parameters
param storageaccountname string = 'enricostorageaccount'
param location string = 'switzerland north'

param resoirceTags object = {
  Environment: 'Test'
  Project: 'BicepTesting'
}

resource stg 'Microsoft.Storage/storageAccounts@2023-01-01' = { //create Storage Account
  name: storageaccountname
  location: location
  tags:resoirceTags
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}
