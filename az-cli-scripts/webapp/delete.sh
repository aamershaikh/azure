#!/bin/bash

#delete a appservice plan in free tier ($1: resource group, $2: plan name, sku is F1)
az appservice plan delete --resource-group "rg-rg1" --name "rg1-myappserviceplan"

#delete a webapp
az webapp delete --resource-group "rg-rg1" --name "rg1-mywebapp"  --plan "rg1-myappserviceplan"