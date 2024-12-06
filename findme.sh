#!/bin/bash

data="598b1216ffad2a7e776acbfc24deed31"
key="6d79436f6d706c65784b6579313233"

decode() {
  echo "$data" | xxd -r -p | openssl enc -aes-128-cbc -d -K "$key" -iv 00000000000000000000000000000000 2>/dev/null
}

result=$(decode)
echo "$result"
