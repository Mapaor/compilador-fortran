#!/bin/bash
set -x  # Debugging mode to print executed commands
echo "INSTALLING FORTRAN..."
sleep 1  # Give it a second to ensure output is flushed
apt update && apt install -y gfortran

