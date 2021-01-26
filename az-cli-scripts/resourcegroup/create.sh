#!/bin/bash

# Create a resource group.
az group create --location westeurope --name "rg-$1" --tags "$2"