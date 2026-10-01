# 🛒 GreenMart App

A modern grocery delivery mobile application built with **Flutter**, following clean architecture principles and a modular folder structure based on Figma designs.

## 📱 Features & Screens
* **Splash Screen:** Smooth introductory screen with auto-navigation.
* **Welcome Screen:** Engaging onboarding view featuring a welcome background image (`welcome.png`) and custom typography.
* **Authentication:** Login and Signup screens structure (`feature/auth`).
* **Cart & Shop:** Cart screen and shop page layout components.
* **Vector & Raster Support:** Seamless integration of SVG assets (logos and icons) and PNG background resources.

## 🛠️ Tech Stack & Architecture
* **Framework:** Flutter (Dart)
* **Architecture:** Feature-first modular structure (`core` and `feature` directories).
* **Key Packages:**
  * `flutter_svg` (^2.0.10) - For rendering vector graphics and icons.
  * `gap` (^3.0.1) - For clean and structured spacing.

## 📂 Project Structure
```text
lib/
│
├── core/
│   ├── constants/       # App images, design configurations, and fonts paths
│   ├── functions/       # Navigation and helper functions
│   ├── styles/          # App colors, text styles, and themes
│   ├── utils/           # Utilities and shared helpers
│   └── widgets/         # Reusable custom widgets (CustomSvgImage, MainButton, CustomTextField)
│
└── feature/
    ├── auth/            # Login and Signup screens
    ├── cart/            # Cart screen implementation
    ├── main/            # Main application wrapper screen
    ├── product_details/ # Product details feature
    ├── shop/            # Shop data and screen UI
    ├── splash/          # Splash screen implementation
    └── welcome/         # Welcome/Onboarding screen implementation
