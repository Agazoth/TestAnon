param location string = 'westeurope'
targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2020-10-01' = {
  name: 'rg-branon-t'
  location: location
}

module st 'br/atea:storageaccount:1.1' = {
  name: 'DeploystorageAccount'
  scope: rg
  params: {
    storageAccountName: 'sabranonrand777'
    location: location
    skuName: 'Standard_LRS'
    allowBlobPublicAccess: false
    isHnsEnabled: false
    stkind: 'StorageV2'
  }
}
