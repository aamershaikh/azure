#!/bin/bash

#create a appservice plan in free tier ($1: resource group, $2: plan name, sku is F1)
az appservice plan create --resource-group "rg-rg1" --name "myappserviceplan"

#create a webapp
az webapp create --resource-group "rg-rg1" --name "mywebapp" --plan "myappserviceplan"