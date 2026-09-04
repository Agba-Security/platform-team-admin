#!/bin/bash

set -o allexport
source ../.env
set +o allexport
BW_SESSION=$(bw unlock --passwordenv BW_PASSWORD --raw)

for json_file in *.json; do
    echo "Processing: $json_file..."

    #Extract item name from filename remove .json extension
    item_name=$(cat $json_file | jq -r .name)

    #try to get an existing item, if it exists, update it, otherwise 
    #create a new item

    existing_item=$(bw get item "$item_name" --session "$BW_SESSION" 2>/dev/null)
    if [ -n "$existing_item" ]; then
        echo "Item '$item_name' already exists. Updating..."
        item_id=$(echo "$existing_item" | jq -r .id)
        cat "$json_file" | bw encode | bw edit item "$item_id" --session "$BW_SESSION"
    else
        echo "Item '$item_name' does not exist. Creating..."
        cat "$json_file" | bw encode | bw create item --session "$BW_SESSION"
    fi
done

bw sync --session "$BW_SESSION"
bw lock