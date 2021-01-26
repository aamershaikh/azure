#!/bin/bash

if[ "$1" == "-h" ];
  echo "appserviceplan takes $1 : resource-group; $2 : name"
  echo "webapp takes $1 : resource-group; $2 : name; $3 : appserviceplan"
  exit 0
fi

#create a appservice plan in free tier ($1: resource group, $2: plan name, sku is F1)
az appservice plan create --resource-group "rg-rg1" --name "myappserviceplan" --sku F1

#create a webapp
az webapp create --resource-group "rg-rg1" --name "mywebapp" --plan "myappserviceplan"