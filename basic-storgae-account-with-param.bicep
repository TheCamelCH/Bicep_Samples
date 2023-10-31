param storageaccountname string = 'enrico_Storageaccount'
param location string = 'switzerland north'

resource stg 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageaccountname
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}
