resource storageAccount 'Microsoft.Storage/storageAccounts@2024-01-01' = {
  name: 'vilasstorageaccount09121'
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