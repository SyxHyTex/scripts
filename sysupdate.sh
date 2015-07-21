#!/bin/bash
# System update script
# Author: Austin Schaefer

if [ $# -gt 1 ];
  then
    echo "Too many arguments; expected 1."
    exit 1
fi

apt-get update

if [ "$1" = "-d" ];
  then
    apt-get dist-upgrade
  else
    apt-get upgrade
fi            
