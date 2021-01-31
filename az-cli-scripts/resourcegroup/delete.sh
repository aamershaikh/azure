#!/bin/bash

# Delete a resource group.
az group delete --location westeurope --name "rg-$1"