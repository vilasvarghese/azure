/*
The following example shows how to either deploy a new storage account or use an existing storage account. A 'new' parameter value deploys the storage account. Otherwise, no deployment happens.
*/

param storageAccountName string
param location string = resourceGroup().location

@allowed([
  'new'
  'existing'
])
param newOrExisting string = 'new'

resource sa 'Microsoft.Storage/storageAccounts@2019-06-01' = if (newOrExisting == 'new') {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

#az group create --name $rgp --location eastasia
#az deployment group create --resource-group $rgp --template-file ./002conditional-deployment.bicep --mode Complete 

#az group delete --name $rgp  --yes	