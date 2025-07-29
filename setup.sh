#!/bin/bash

# -----------------------------------------------------------------
# setup.sh - Script to set up the environment for PyML project
# -----------------------------------------------------------------
# Environment setup
# ----------------------------------------------------------------
# Check if conda is installed
if command -v conda &> /dev/null; then
    echo "Conda is installed. Proceeding with conda environment setup."
    # Create a conda environment
    conda create --name tf tensorflow --yes # If you use gpu tensorflow use `tensorflow-gpu` instead of `tensorflow`
    # Activate the conda environment
    conda activate tf
else
    echo "Conda is not installed. Proceeding with pip environment setup. "
    # Check if pip is installed
    if command -v pip3 &> /dev/null; then
        echo "Pip is installed. Proceeding with pip environment setup."
        # Create a virtual environment using pip
        python3 -m venv venv
        # Activate the virtual environment
        source venv/bin/activate
    else
        echo "Neither conda nor pip is installed. Please install one of them to proceed."
        exit 1
    fi
fi

# Install dependencies
# ----------------------------------------------------------------
# Uncomment the following line to install dependencies using conda
# conda install --yes --file requirements.txt
# ----------------------------------------------------------------
# If you are using Pypi, uncomment the following line
# pip3 install -r requirements.txt