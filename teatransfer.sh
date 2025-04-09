#!/bin/bash

echo "🚀 Memulai setup environment untuk TeaTransfer..."

# Update sistem
sudo apt update && sudo apt upgrade -y

# Install curl, git, dan dependency penting
sudo apt install -y curl wget git build-essential unzip software-properties-common

# Install Node.js (v18 LTS)
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# Cek versi Node & NPM
echo "📦 Node version: $(node -v)"
echo "📦 NPM version: $(npm -v)"

# Install Playwright dependencies
sudo apt install -y libatk1.0-0 libatk-bridge2.0-0 libcups2 libxcomposite1 libxdamage1 libxrandr2 libgbm1 libasound2 libpangocairo-1.0-0 libgtk-3-0 libnss3 libxss1 libx11-xcb1 libxshmfence1 libxcb-dri3-0

# Install project dependencies
echo "📦 Install dependency project dari package.json..."
npm install

# Install browser buat Playwright (Chromium)
echo "🌐 Install browser Chromium untuk Playwright..."
npx playwright install --with-deps

# Jalankan script
echo "🚀 Jalankan teatransfer.js..."
node teatransfer.js --now
