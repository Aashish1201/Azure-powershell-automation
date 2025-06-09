# Defining variables
$rgName = "automationRG"
$location = "EastUS"
$vmName = "automatedVM"

# username and password
$cred = Get-Credential

# Create the resource group (if it doesn't exist)
New-AzResourceGroup -Name $rgName -Location $location

# Creating a Ubuntu VM
New-AzVM `
  -ResourceGroupName $rgName `
  -Name $vmName `
  -Location $location `
  -Credential $cred `
  -Image "Ubuntu2204" `
  -OpenPorts 22 `
