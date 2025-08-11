#!/bin/bash


# Create an item and capture the returned ID
echo -e "\n\033[1;34m++ Create an item and capture the returned ID\033[0m\n"
CREATE_RESPONSE=$(curl -s \
  -H "Authorization: Bearer secret-token" \
  -H "Content-Type: application/json" \
  -d '{"name":"Buy milk"}' \
  http://127.0.0.1:5000/items)

ITEM_ID=$(echo "$CREATE_RESPONSE" | jq '.id')

echo "Created item with ID: $ITEM_ID"

# List all items
echo -e "\n\033[1;34m++ List all items\033[0m\n"
curl -i \
  -H "Authorization: Bearer secret-token" \
  http://127.0.0.1:5000/items

# Update the item
echo -e "\n\033[1;34m++ Update an item\033[0m\n"
curl -i \
  -X PATCH \
  -H "Authorization: Bearer secret-token" \
  -H "Content-Type: application/json" \
  -d '{"name":"Buy almond milk"}' \
  http://127.0.0.1:5000/items/$ITEM_ID

# Search by name 
echo -e "\n\033[1;34m++ Search for an item by name\033[0m\n"
curl -i \
  -X GET \
  -H "Authorization: Bearer secret-token" \
  http://127.0.0.1:5000/items/search?q=milk

echo Delete the item
echo -e "\n\033[1;34m++ Delete the item\033[0m\n"
curl -i \
  -X DELETE \
  -H "Authorization: Bearer secret-token" \
  http://127.0.0.1:5000/items/$ITEM_ID