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
- [**Printable PDF Guide (GUIDE.pdf)**](GUIDE.pdf): Typeset PDF version of the complete guide.

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
├── GUIDE.tex                # LaTeX source for printable PDF guide
├── GUIDE.pdf                # Compiled publication-ready PDF guide
└── README.md
```

---

## Quick Start

### 1. Clone, Re-initialize Git & Push
```bash
# Clone this template
git clone https://github.com/Mehdirben/iosapp.git my-ios-app
cd my-ios-app

# Re-initialize a fresh git history
rm -rf .git
git init
git add .
git commit -m "Initial commit: fresh iOS app"
```

**Push to GitHub:**
- **In VS Code (Easiest)**: Open the folder (`code .`), go to the **Source Control** tab (`Ctrl+Shift+G`), and click **"Publish to GitHub"**. It automatically creates the repository and pushes!
- **Or via CLI**:
  ```bash
  git branch -M main
  git remote add origin https://github.com/<your-user>/<your-repo>.git
  git push -u origin main
  ```

*(Optional: Rename your app in `project.yml` and `Sources/App/Info.plist` before pushing).*

### 2. Download the Compiled IPA
Go to the **Actions** tab in your repository, select the latest build, and download **`MyiOSApp-unsigned-ipa`**.

### 3. Install on iPhone
Follow the **[Complete Installation Guide (GUIDE.md)](GUIDE.md)** for platform-specific instructions (**Linux**, **Windows**, **macOS**, and **SideStore**), developer mode setup, and troubleshooting.
