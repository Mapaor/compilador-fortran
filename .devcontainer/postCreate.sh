#!/bin/bash
set -x  # Enable debug mode to print each command being executed
echo "INSTALLING FORTRAN..."
sudo apt update && sudo apt install -y gfortran
