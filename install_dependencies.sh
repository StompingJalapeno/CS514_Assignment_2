#!/bin/bash

echo "🔧 Starting installation of dependencies..."

# Step 1: Install Python packages via pip
echo "📦 Installing core Python packages..."
pip install --upgrade pip
pip install numpy matplotlib imageio ipython

# Step 2: Install Gymnasium and its environments
echo "🎮 Installing Gymnasium environments..."
pip install gymnasium[classic-control] gymnasium[toy-text]
pip install gymnasium[mujoco]
pip install gymnasium[atari] gymnasium[accept-rom-license]
pip install gymnasium[box2d]

# Step 3: Handle box2d alternative via conda (if needed)
echo "📦 If you run into issues with box2d, consider running:"
echo "    conda install swig"
