#!/bin/bash

# Define variables
resourceGroupToDelete="myResourceGroup"

# Display a progress message
echo "Initiating deletion of resource group $resourceGroupToDelete..."

# Delete the resource group and show the command output
az group delete --name $resourceGroupToDelete --yes --output none
