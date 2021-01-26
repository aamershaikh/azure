#!/bin/bash

if[ "$1" == "-h" ];
  echo "appserviceplan takes resource-group; name"
  echo "webapp takes resource-group; name; appserviceplan"
  exit 0
fi

#delete a appservice plan in free tier ($1: resource group, $2: plan name, sku is F1)
az appservice plan delete --resource-group "rg-rg1" --name "myappserviceplan" --sku F1

#delete a webapp
az webapp delete --resource-group "rg-rg1" --name "mywebapp"  --plan "myappserviceplan"