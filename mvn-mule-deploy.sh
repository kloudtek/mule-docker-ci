#!/bin/bash

mvn -B deploy -DmuleDeploy -Danypoint.env=$1 $2 $3 $4 $5 $6 $7 $8 $9
