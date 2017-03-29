#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/searches"
curl "${API}${URL_PATH}/ember" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \

echo
