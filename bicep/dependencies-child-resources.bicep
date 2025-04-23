param location string = 'eastus'

resource appServicePlan 'Microsoft.Web/serverFarms@2023-01-01' = {
  name: 'myAppServicePlan'
  location: location
  kind: 'AppServicePlan'
  sku: {
    name: 'F1'
    tier: 'Standard'
    size: 'S1'
  }
}

resource webApp 'Microsoft.Web/sites@2023-01-01' = {
  name: 'vilasWebApp123'	#this name should be unique
  location: location
  kind: 'app'
  properties: {
    serverFarmId: appServicePlan.id
  }
  dependsOn: [
    appServicePlan
  ]
}

#az group create --name $rgp --location eastasia
#az deployment group create --resource-group $rgp --template-file ./dependencies-child-resources.bicep --mode Complete 

#az group delete --name $rgp  --yes	