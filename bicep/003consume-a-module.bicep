@minLength(3)
@maxLength(11)
param namePrefix string
param location string = resourceGroup().location

module stgModule './module.bicep' = {
  name: 'vilasStorageDeploy'
  params: {
    storagePrefix: namePrefix
    location: location
  }
}

output storageEndpoint object = stgModule.outputs.storageEndpoint


#az group create --name $rgp --location eastasia
#az deployment group create --resource-group $rgp --template-file ./002conditional-deployment.bicep --mode Complete 
#az group delete --name $rgp  --yes	