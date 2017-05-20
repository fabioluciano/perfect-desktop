#!/usr/bin/env bash

function add_repository() {
  repository=$(echo $@ | jq -r '.repository')
  echo sudo add-apt-repository ppa:$repository -y
}
