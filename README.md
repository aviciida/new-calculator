# iOS App Template
<p>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-5.0+-brightgreen.svg" alt="Swift 5.0+">
    </a>
    <img src="https://img.shields.io/badge/Xcode-11.0+-brightgreen.svg" alt="Xcode 11.0+">
    <img src="https://img.shields.io/badge/iOS-9.0+-brightgreen.svg" alt="iOS 9.0+">
</p>

Yenom's app template.

## Getting Started

1. Clone this repository. `$ git clone --recursive git@github.com:yenom/AppTemplate-ios.git`
2. Remove template git `$ git remote remove origin`
3. Add your app git `$ git remote add origin {git-repo-url}`
4. Rename workspace 
```
$ mv AppName.xcworkspace {your-app-name}.xcworkspace
```
- Edit Podfile
- Edit .github/workflows/main.yml
- Edit Sources/AppCore/AppCore/logger.swift

5. :tada:

Run the target `Development` for development.
Run the target `App` for production.
