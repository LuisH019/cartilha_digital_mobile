# Cartilha Digital Mobile

## Getting Started: Quick Flutter Setup Guide

If you are new to Flutter or haven't run a Flutter project before, follow these steps to set up your environment:

### 1. Install Flutter

- Visit the [Flutter installation page](https://docs.flutter.dev/get-started/install) and choose your operating system.
- Download the Flutter SDK and extract it to your desired location.
- Add Flutter to your system PATH. (See instructions for [Windows](https://docs.flutter.dev/get-started/install/windows), [macOS](https://docs.flutter.dev/get-started/install/macos), or [Linux](https://docs.flutter.dev/get-started/install/linux).)

### 2. Install Required Dependencies

- **Git**: [Download Git](https://git-scm.com/downloads) if you don't have it.
- **IDE (optional)**: Use [VS Code](https://code.visualstudio.com/), [Android Studio](https://developer.android.com/studio), or any editor you prefer.

### 3. Check Your Flutter Setup

Open a terminal and run:
```sh
flutter doctor
```
This command checks your environment and shows missing dependencies for your platform (like Android Studio, Xcode, etc.). Follow the instructions to resolve any issues.

### 4. Clone and Run the Project

```sh
git clone https://github.com/LuisH019/cartilha_digital_mobile.git
cd cartilha_digital_mobile
flutter pub get
flutter run
```
You can use `flutter run` to launch the app on a connected device, emulator, or simulator.

---

## Project Information

**Repository URL:** https://github.com/LuisH019/cartilha_digital_mobile

Cartilha Digital Mobile is a cross-platform mobile application for digital booklets, structured to support Android, iOS, Windows, macOS, and Linux using Flutter and native modules.

---

## How can I edit this code?

You have several options for editing and working with this project:

### 1. Use your preferred IDE

Clone the repository locally and use your favorite development environment:

```sh
# Step 1: Clone the repository.
git clone https://github.com/LuisH019/cartilha_digital_mobile.git

# Step 2: Navigate to the project directory.
cd cartilha_digital_mobile

# Step 3: Install dependencies using Flutter.
flutter pub get

# Step 4: Run the app for your target device.
flutter run
```

### 2. Edit files directly on GitHub

- Browse to any file in the repository.
- Click the pencil icon to edit the file.
- Make your changes and commit them.

### 3. Use GitHub Codespaces

- Open the repository main page.
- Click the green "Code" button.
- Select the "Codespaces" tab.
- Launch a new Codespace to work in a cloud-based dev environment.

---

## Project Structure

Here’s an overview of the main files and directories:

- **lib/**: Contains the Dart source code for the Flutter app.
- **assets/**: Holds images, fonts, and other static resources.
- **android/**, **ios/**, **linux/**, **macos/**, **windows/**, **web/**: Platform-specific native and configuration files for each supported OS.
- **installer/**: Contains installer-related scripts or files.
- **test/**: Houses unit and widget tests.
- **pubspec.yaml**: Defines Dart dependencies and assets.
- **pubspec.lock**: Locked versions of dependencies.
- **analysis_options.yaml**: Linting and analysis rules.
- **.gitignore**: Files and folders ignored by Git.
- **.metadata**: Flutter project metadata.

---

## What technologies are used for this project?

This project leverages:

- Flutter (Dart)
- Native modules (C++, C, Swift)
- Platform build systems (CMake, Android/iOS native)
- Additional: HTML, configuration files

---

## How can I deploy or build this project?

To build the application for your platform:

```sh
# Android
flutter build apk

# iOS (requires macOS)
flutter build ios

# Windows
flutter build windows

# macOS
flutter build macos

# Linux
flutter build linux

# Web
flutter build web
```

Refer to the [Flutter documentation](https://docs.flutter.dev/) for platform-specific requirements and troubleshooting.

---

## Customization & Contribution

Feel free to fork, clone, and contribute via pull requests or issues.

---

## License

See `LICENSE` file for details.
