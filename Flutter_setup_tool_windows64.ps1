Write-Host "🛠 Installing Chocolatey (if needed)..."
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = 'Tls12'
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

Write-Host "📦 Installing Flutter and Git..."
choco install -y flutter git unzip openjdk

Write-Host "📦 Installing Android SDK..."
choco install -y android-sdk

Write-Host "📁 Setting Environment Variables..."
$env:ANDROID_HOME = "$Env:ProgramFiles\Android\android-sdk"
$env:Path += ";$env:ANDROID_HOME\tools;$env:ANDROID_HOME\platform-tools"

Write-Host "✅ Running Flutter Doctor..."
flutter doctor

Write-Host "🎉 Setup Complete!"
