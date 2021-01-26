#!/bin/bash

if[ "$1" == "-h" ]; then
  echo "appserviceplan takes $1 : resource-group; $2 : name"
  echo "webapp takes $1 : resource-group; $2 : name; $3 : appserviceplan"
  exit 0
fi
#delete a appservice plan in free tier ($1: resource group, $2: plan name, sku is F1)
az appservice plan delete --resource-group "rg-$1" --name "$2" --sku F1

#delete a webapp
az webapp delete --resource-group "rg-$1" --name "$2"  --plan "$3"