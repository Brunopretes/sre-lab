#!/bin/bash

STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:5000/health)

if [ "$STATUS" -ne 200 ]; then
  echo "ALERTA: Aplicação fora do ar!"
else
  echo "Aplicação saudável"
fi
