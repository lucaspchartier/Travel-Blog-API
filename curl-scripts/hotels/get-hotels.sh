#!/bin/bash

curl "http://localhost:4741/hotels" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
