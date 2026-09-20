# Modern iOS Starter App (CI-Powered)

A modern SwiftUI iOS application configured to build in the cloud via **GitHub Actions** and install onto physical iPhones for **free** without needing a local Mac or a paid Apple Developer program.

<p align="center">
  <a href="GUIDE.md">
    <img src="https://img.shields.io/badge/📖_Complete_Installation_Guide-Click_Here_to_Read-2563EB?style=for-the-badge&logo=gitbook&logoColor=white" alt="Read the Guide" />
  </a>
</p>

---

## Highlights

- **No Mac Required**: Code on Linux, Windows, or macOS using any editor (VS Code, Neovim, etc.).
- **Cloud Compilation**: GitHub Actions compiles Swift code and packages unsigned IPAs using macOS runners and Xcode 16.
- **Declarative Xcode Project**: Uses [XcodeGen](https://github.com/yonaskolb/XcodeGen) (`project.yml`) so you never have to manually edit messy `.xcodeproj` files.
- **100% Free iPhone Installation**: Sideload onto any physical iPhone using personal free Apple IDs.

---

## Documentation

- [**Cross-Platform Installation Guide (GUIDE.md)**](GUIDE.md): Detailed step-by-step instructions with platform dropdowns for **Linux (Fedora, Ubuntu, Arch)**, **Windows**, **macOS**, and **Wire-Free iOS (SideStore)**.

---

## Project Structure

```
├── .github/
│   └── workflows/
│       └── build.yml        # GitHub Actions CI workflow (Xcode 16 / macOS 15)
├── Sources/
│   └── App/
│       ├── iOSApp.swift     # SwiftUI @main entry point
│       ├── ContentView.swift# Main SwiftUI view
│       ├── Info.plist       # Bundle metadata
│       └── Assets.xcassets  # App icon & color catalogs
├── project.yml              # Declarative XcodeGen configuration
├── .gitignore
├── GUIDE.md                 # Full installation & sideloading guide
└── README.md
```

---

## Quick Start

### 1. Push to GitHub
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/<your-user>/<your-repo>.git
git push -u origin main
```

### 2. Download the IPA
Go to the **Actions** tab in your repository, select the latest build, and download **`MyiOSApp-unsigned-ipa`**.

### 3. Install on iPhone
Follow the **[Complete Installation Guide (GUIDE.md)](GUIDE.md)** for platform-specific instructions (**Linux**, **Windows**, **macOS**, and **SideStore**), developer mode setup, and troubleshooting.
