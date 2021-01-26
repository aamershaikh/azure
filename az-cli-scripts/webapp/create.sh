#!/bin/bash

if["$1" == "-h"];
 echo "appserviceplan takes $1 : resource-group; $2 : name"
 echo "webapp takes $1 : resource-group; $2 : name; $3 : appserviceplan name"
 exit 0
fi

#create a appservice plan in free tier ($1: resource group, $2: plan name, sku is F1)
az appservice plan create --resource-group "$1" --name "$2" --sku F1

#create a webapp
az webapp create --resource-group "$1" --name "$2" --plan "$3"