#!/bin/bash
if [ -d "./dist" ]; then rm -Rf "./dist"; fi
dotnet restore
dotnet publish --framework netcoreapp3.0 --configuration Debug --output dist