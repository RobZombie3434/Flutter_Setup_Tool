#!/bin/bash

echo "🛠️ Flutter + Android Dev Setup Starting..."

# ========== STEP 1: INSTALL HOMEBREW ==========
if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "✅ Homebrew is already installed."
fi

# ========== STEP 2: INSTALL CODE CLI ==========
if ! command -v code &>/dev/null; then
  echo "⚠️ VS Code CLI tool not found."
  echo "   ➤ Open VS Code, press Cmd+Shift+P"
  echo "   ➤ Type: 'Shell Command: Install code in PATH'"
  echo "❌ Exiting. Please rerun this script once done."
  exit 1
else
  echo "✅ VS Code CLI tool is available."
fi

# ========== STEP 3: INSTALL FLUTTER ==========
if ! command -v flutter &>/dev/null; then
  echo "📦 Installing Flutter SDK..."
  brew install --cask flutter
else
  echo "✅ Flutter SDK is already installed."
fi

# ========== STEP 4: INSTALL ANDROID STUDIO ==========
if ! command -v studio &>/dev/null; then
  echo "📦 Installing Android Studio..."
  brew install --cask android-studio
else
  echo "✅ Android Studio is already installed."
fi

# ========== STEP 5: INSTALL ANDROID SDK COMPONENTS ==========
echo "📦 Installing Android SDK Command-line Tools..."
brew install --cask android-sdk
brew install android-platform-tools

# ========== STEP 6: SETUP ENVIRONMENT VARIABLES ==========
echo "🔧 Setting up environment variables..."
{
  echo ""
  echo "# Flutter & Android SDK Paths"
  echo 'export PATH="$PATH:/opt/homebrew/Caskroom/flutter/latest/flutter/bin"'
  echo 'export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"'
  echo 'export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"'
  echo 'export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"'
} >> ~/.zprofile

# Reload shell config
source ~/.zprofile

# ========== STEP 7: RUN FLUTTER DOCTOR ==========
echo "🩺 Running flutter doctor..."
flutter doctor

# ========== STEP 8: OPEN VS CODE ==========
echo "🚀 Opening VS Code in this folder..."
code .

echo "✅ All done! You’re ready to build Flutter apps with Android Studio."
