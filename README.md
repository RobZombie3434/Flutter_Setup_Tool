# Flutter_Setup_Tool
🛠 Flutter &amp; Android SDK One-Line Setup Scripts Easily set up Flutter and Android development environments on macOS, Linux, and Windows with a single script. No Android Studio required — just the essentials to get you building fast.  🚀 Perfect for beginners, fast prototyping, and minimal environments.
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

| Platform | Script File             | Description                          |
|----------|-------------------------|--------------------------------------|
| macOS    | `setup-mac.command`     | macOS install and setup script       |
| Linux    | `setup-linux.sh`        | Debian/Ubuntu-based install script   |
| Windows  | `setup-windows.ps1`     | PowerShell script for Windows setup  |

---

## 🚀 How to Use

### ✅ macOS

1. Download the `setup-mac.command` file.
2. Open Terminal and run the following to make it executable:

   ```bash
   chmod +x setup-mac.command

### Windows

Download the setup-windows.ps1 file.

Right-click the file and choose Run with PowerShell.

If you get a permissions error, open PowerShell as Admin and run(without the inverted commas):
    "Set-ExecutionPolicy RemoteSigned"

Then re-run the script.

### Linux(Debian/Ubuntu)

Download the setup-linux.sh file.

Make it executable and run:
    chmod +x setup-linux.sh
    ./setup-linux.sh
    


📌 Notes
These scripts are meant for fresh development setups.
macOS requires Xcode Command Line Tools to be pre-installed.
Linux script assumes a Debian/Ubuntu-based distribution.
Windows script installs Git, Android SDK, and Flutter via Chocolatey.
Internet access is required during installation.

🤝 Contribute
Got a better idea or found a bug? Feel free to submit a pull request or open an issue. Help improve these scripts for devs everywhere 🚀

🧠 License
MIT License – Do whatever you want, just don't blame me if something breaks. 😄
