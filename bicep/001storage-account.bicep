resource storageAccount 'Microsoft.Storage/storageAccounts@2203-05-01' = {
  name: 'mystorageaccount'
  location: 'eastasia'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
    supportsHttpsTrafficOnly: true
  }
}