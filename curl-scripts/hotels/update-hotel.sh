#!/bin/bash

curl "http://localhost:4741/hotels/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "hotel": {
      "name": "'"${NAME}"'",
      "location": "'"${LOCATION}"'"
    }
  }'

echo
