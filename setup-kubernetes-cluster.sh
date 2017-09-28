#!/bin/bash

kubectl create --namespace=money-tracker -f namespace.yaml
kubectl create --namespace=money-tracker -f secret.yaml
kubectl create --namespace=money-tracker -f money-tracker-database-deployment.yaml
kubectl create --namespace=money-tracker -f database-service.yaml
kubectl create --namespace=money-tracker -f money-tracker-index-server-deployment.yaml
kubectl create --namespace=money-tracker -f index-server-service.yaml

kubectl create --namespace=money-tracker -f money-tracker-backend-deployment.yaml
kubectl create --namespace=money-tracker -f index-backend-service.yaml

