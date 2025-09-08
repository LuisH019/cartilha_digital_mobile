Set-Location -Path "$PSScriptRoot/../"

flutter build apk --release; $version = (Select-String -Path .\pubspec.yaml -Pattern '^version:' | ForEach-Object { $_.Line.Split(':')[1].Trim() }); Rename-Item .\build\app\outputs\flutter-apk\app-release.apk "cartilha_digital_v$version.apk"