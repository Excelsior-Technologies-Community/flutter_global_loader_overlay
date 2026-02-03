## 🚀 Flutter Global Loader Overlay

A lightweight, context-free global loader overlay for Flutter.
Show or hide a blocking loader from anywhere in your app — no BuildContext required.

---
## ✨ Features

- ✅ Show loader globally

- ❌ No BuildContext needed

- 🛑 Blocks user interaction

- 🧠 Prevents multiple loaders

- ⚡ Safe during app startup & navigation

- 🎨 Fully customizable loader UI

- 📦 Easy to extract into a Flutter package

---
## 📸 Preview

https://github.com/user-attachments/assets/35d5a841-fa2e-4c5e-9e56-6761fc4e8c3f

---
## 📁 Folder structure
```
flutter_global_loader_overlay/
├── lib/
│   ├── flutter_global_loader_overlay.dart   
│   │
│   └── src/
│           ├── global_loader.dart         
├── pubspec.yaml
├── README.md
├── CHANGELOG.md
└── LICENSE
```
---
## 📦 Installation

Add this to your pubspec.yaml:
```
dependencies:
  flutter_global_loader_overlay:
    git:
      url: https://github.com/Excelsior-Technologies-Communitye/flutter_global_loader_overlay.git
```
then run:
```
flutter pub get 
```
---
## 🚀 Usage
```
@override
void initState() {
  super.initState();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    GlobalLoader.show();
  });
}
```
---
## 📄 License

MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Flutter Image Compression library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM,
OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
