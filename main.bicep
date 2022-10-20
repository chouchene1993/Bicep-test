param location string = 'france central'

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'VNet-Dev'
  location: location
  properties: {
    addressSpace: { addressPrefixes: [ '10.0.0.0/16' ] }
    subnets: [
      { name: 'web-sub', properties: { addressPrefix: '10.0.0.0/24' } }
      { name: 'db-sub', properties: { addressPrefix: '10.0.1.0/24' } }
    ]
  }
}
