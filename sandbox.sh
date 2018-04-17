#!/bin/bash

function hello() {
  echo "Hello, World!";
}

function directory() {
  # ls ~/Sites
  ll ~/Sites
}

function listhosts() {
  # grep 127.0.0.1 /etc/hosts
  
  # hosts="$(grep 127.0.0.1 /etc/hosts)";
  # echo $hosts;

  ip="127.0.0.1";
  pathtohosts="/etc/hosts";
  hosts="$(grep $ip $pathtohosts)";
  for i in $hosts; do
    if [[ $i != $ip && $i != "localhost" ]]; then
      hostsarr+=(${i});
    fi
  done
  # echo ${#hostsarr[@]}; 
  unset i;
  for (( i = 0; i < ${#hostsarr[@]}; i++ )); do
    echo $((i+1))")" ${hostsarr[$i]};
  done
  unset i;
  unset hostsarr;
  
}

