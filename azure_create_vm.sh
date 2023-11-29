#!/bin/bash

# Define variables
resourceGroup="myResourceGroup"  # Replace with your desired resource group name
vmName="mySpotVM"               # Replace with your desired VM name
location="westus3"               # Replace with your desired Azure region
vmSize="Standard_DS1_v2"        # Size of the VM
osDiskSizeGB=30                 # Size of the OS disk in GB

# Create a resource group
az group create --name $resourceGroup --location $location

# Create the Spot VM with Debian (latest version), DS1 size, and a 30GB Standard HDD
az vm create \
  --resource-group $resourceGroup \
  --name $vmName \
  --image Debian11 \
  --size $vmSize \
  --admin-username azureuser \
  --generate-ssh-keys \
  --priority Spot \
  --eviction-policy Deallocate \
  --os-disk-size-gb $osDiskSizeGB \
  --public-ip-sku Standard

echo "Spot VM $vmName created successfully in resource group $resourceGroup!"
