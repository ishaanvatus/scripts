#!/bin/bash

while getopts ":i:o:" opt; do
  case $opt in
    i)
      input_iso="$OPTARG"
      ;;
    o)
      output_device="$OPTARG"
      ;;
    \?)
      echo "invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

if [ -z "$input_iso" ] || [ -z "$output_device" ]; then
  echo "usage: $0 -i input_iso -o output_device"
  exit 1
fi

sudo dd if="$input_iso" of="$output_device" status=progress
