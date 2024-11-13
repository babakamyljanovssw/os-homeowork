#!/bin/bash

# Check if boot.bin exists
if [ ! -f boot.bin ]; then
  echo "boot.bin not found!"
  exit 1
fi

# Run qemu-system-x86_64 with boot.bin
qemu-system-x86_64 boot.bin