# 🛠 Flutter & Android SDK One-Line Setup Scripts

Easily set up Flutter and Android development environments on **macOS**, **Linux**, and **Windows** with minimal hassle. These scripts install the necessary tools and configure your environment so you can start building Flutter apps right away — **no Android Studio required**.

---

## 📦 What’s Included

- ✅ Flutter SDK installation  
- ✅ Android SDK Command Line Tools  
- ✅ Java JDK installation (for Android builds)  
- ✅ Git, unzip, curl setup  
- ✅ Environment variables automatically configured  
- ✅ Runs `flutter doctor` at the end to confirm setup

---

## 📁 Script List

| Platform | Script File                                   | Description                          |
|----------|-----------------------------------------------|--------------------------------------|
| macOS    | `Flutter_setup-tool_macos.command`            | macOS install and setup script       |
| Linux    | `Flutter_Setup_tool_ubuntu-debian.sh`         | Debian/Ubuntu-based install script   |
| Windows  | `Flutter_setup_tool_windows64.ps1`            | PowerShell script for Windows setup  |

---

## 🚀 How to Use

### ✅ macOS

1. Download the `Flutter_setup_tool_macos.command` file.
2. Open Terminal and run the following to make it executable:

   ```bash
   chmod +x Flutter_setup_tool_macos.command

3. Then run the script:
   ```bash
   ./Flutter_setup_tool_macos.command


### ✅ Windows

1. Download the `Flutter_setup_tool_windows64` file.
2. Right-click the file and choose "Run with PowerShell."
3. If you get a permissions error, open PowerShell as Administrator and run:
   ```powershell
   Set-ExecutionPolicy RemoteSigned

4. Then re-run the script.

### ✅ Linux (Debian/Ubuntu)

1. Download the `Flutter_setup_tool_ubuntu-debian.sh` file.
2. Make it executable and run:
   ```bash-
   chmod +x Flutter_setup_tool_ubuntu-debian.sh

### 📌 Notes

-- These scripts are meant for fresh development setups.
-- macOS requires Xcode Command Line Tools to be pre-installed.
-- Linux script assumes a Debian/Ubuntu-based distribution.
-- Windows script installs Git, Android SDK, and Flutter via Chocolatey.
-- Internet access is required during installation.

### 🤝 Contribute

Got a better idea or found a bug? Feel free to submit a pull request or open an issue. Help improve these scripts for devs everywhere 🚀

### 🧠 License

MIT License – Do whatever you want, just don't blame me if something breaks. 😄
