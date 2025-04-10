#!/bin/bash

echo "🛠 Installing dependencies..."
sudo apt update
sudo apt install -y curl git unzip openjdk-17-jdk

echo "📦 Installing Flutter..."
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:`pwd`/flutter/bin"

echo "📦 Installing Android SDK..."
mkdir -p $HOME/Android/Sdk/cmdline-tools/latest
cd $HOME/Android/Sdk/cmdline-tools
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O tools.zip
unzip tools.zip -d latest
rm tools.zip

echo "📁 Setting up Environment Variables..."
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin

yes | sdkmanager --licenses

echo "✅ Flutter Doctor Check"
flutter doctor

echo "🎉 Setup Complete!"
