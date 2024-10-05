#!/bin/bash

echo "Running all components of the headless Windows executable simulation"

# Check if setup has been run before
if [ ! -f ".setup_complete" ]; then
    echo "Running setup script..."
    bash setup_headless_replit.sh
    touch .setup_complete
else
    echo "Setup already completed. Skipping..."
fi

echo "Running headless prototype..."
python headless_prototype.py

echo "Running headless simulation..."
bash run_headless_simulation.sh

echo "All components have been executed."
