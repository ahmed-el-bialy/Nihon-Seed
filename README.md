<div align="center">

# 🎌 NihonSeed

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-blue.svg?style=for-the-badge)](https://flutter.dev)

**A beautiful, interactive Japanese learning app with audio pronunciation and vibrant visual design**

[📱 Demo Video](#-demo-video) • [✨ Features](#-features) • [📸 Screenshots](#-screenshots) • [🏗️ Architecture](#%EF%B8%8F-architecture) • [🚀 Getting Started](#-getting-started) • [👤 Author](#-author)

</div>

---

## 📱 Demo Video

<div align="center">

### 🎬 Watch the App in Action

**[🔗 Watch on YouTube Shorts](https://youtube.com/shorts/tvvhXTkLd24?si=IYeuk77jfmlK8VhZ)**

*A complete walkthrough of NihonSeed demonstrating all learning categories and audio features*

</div>

---

## 🎯 Overview

**NihonSeed** is an interactive Flutter application designed to help beginners learn essential Japanese vocabulary through an engaging audio-visual experience. The app features four core learning categories with native pronunciation, vibrant imagery, and an intuitive card-based interface.

### 💡 Key Highlights
- 🎨 **Beautiful, Colorful UI** — Clean Material Design with category-based color themes
- 🔊 **Audio Pronunciation** — One-tap native audio playback for every word
- 🏗️ **Clean Architecture** — Well-organized component-based code structure
- 📱 **Cross-Platform** — Works seamlessly on Android and iOS
- 🎯 **Beginner Friendly** — Perfect for anyone starting their Japanese journey

---

## ✨ Features

### 🏠 Core Features
- **Home Screen** — Browse all learning categories with a beautiful 2-column grid
- **Numbers** — Learn counting from 1 (Ichi) to 10 (Juu) with illustrations
- **Family Members** — Master family vocabulary from grandfather to daughter
- **Colors** — Discover essential colors in Japanese with visual aids
- **Phrases** — Common conversational phrases for daily use
- **Audio Playback** — Instant pronunciation with a single button press

### ⚙️ Technical Features
- **Asset Management** — Organized images and audio files
- **Responsive Grid** — Adaptive 2-column layout with `GridView.builder`
- **Color-Coded Categories** — Unique theme color for each learning section
- **Reusable Components** — Modular widget architecture
- **Material Design 3** — Latest Google Material Design principles

---

## 📸 Screenshots

<div align="center">

| 🏠 Home | 🔢 Numbers | 👨‍👩‍👧‍👦 Family |
|:-------:|:----------:|:--------------:|
| <img src="screenshots/home.png" width="200"> | <img src="screenshots/numbers.png" width="200"> | <img src="screenshots/family.png" width="200"> |
| Category selection | Counting 1-10 | Family vocabulary |

| 🎨 Colors | 💬 Phrases |
|:---------:|:----------:|
| <img src="screenshots/colors.png" width="200"> | <img src="screenshots/phrases.png" width="200"> |
| Color learning | Audio phrases |

</div>

---

## 🛠️ Technical Stack

<div align="center">

| Component | Technology | Version | Purpose |
|:---------:|:----------:|:-------:|:-------:|
| **Framework** | Flutter | Stable | Cross-platform UI |
| **Language** | Dart | 3.x | Programming |
| **Audio** | Audioplayers | ^6.6.0 | Audio playback |
| **State Mgmt** | setState | Built-in | UI state handling |
| **Icons** | Material Icons | Built-in | System icons |
| **Design** | Material Design 3 | Latest | UI/UX guidelines |

</div>

---

## 🏗️ Architecture

### 📁 Project Structure

```
lib/
├── main.dart                        # Application entry point
│
├── Models/                          # 📊 Data Models
│   ├── Category_Model.dart          # Category data structure
│   └── Data_Models.dart             # Word/phrase data + audio
│
├── Component/                       # 🧩 Reusable UI Components
│   ├── Button_Info.dart             # Audio play button widget
│   ├── Data_Card.dart               # Item card with image & audio
│   ├── Item_List_Builder.dart       # Grid layout builder
│   ├── Category_item.dart           # Category card widget
│   └── Home_Page_Body.dart          # Home screen grid layout
│
├── Screens/                         # 🎬 UI Screens
│   ├── HomePage.dart                # Main landing screen
│   ├── NumbersPage.dart             # Numbers learning screen
│   ├── FamilyPage.dart              # Family learning screen
│   ├── ColorsPage.dart              # Colors learning screen
│   └── phrasesPage.dart             # Phrases learning screen
│
└── helper/
    └── constants.dart               # App-wide color constants
```

### 🔄 Data Flow

```
┌─────────────────┐     ┌──────────────────┐     ┌─────────────────┐
│  CategoryModel  │────▶│    HomePage      │────▶│   GridView      │
│  (name, color,  │     │  (categoryList)  │     │  (2 columns)    │
│   icon, page)   │     └──────────────────┘     └─────────────────┘
└─────────────────┘                                      │
                                                         ▼
┌─────────────────┐     ┌──────────────────┐     ┌─────────────────┐
│   DataModel     │────▶│ ItemListBuilder  │────▶│   DataCard      │
│ (japaneseWord,  │     │  (modelList)     │     │  (image +       │
│  englishWord,   │     └──────────────────┘     │   ButtonInfo)   │
│  imagePath,     │                              └─────────────────┘
│  sound)         │                                       │
└─────────────────┘                                       ▼
                                                  ┌─────────────────┐
                                                  │   AudioPlayer   │
                                                  │  .play(Asset)   │
                                                  └─────────────────┘
```

**Navigation:** Material PageRoute for screen transitions
```dart
// Category tap navigation
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => model.page),
);
```

---

## 🎨 Design System

### Color Palette
| Category | Hex Code | Color | Usage |
|:---------|:--------:|:-----:|:------|
| **Numbers** | `#E91E63` | Pink | Numbers category theme |
| **Family** | `#4CAF50` | Green | Family category theme |
| **Colors** | `#FF7043` | Orange | Colors category theme |
| **Phrases** | `#2196F3` | Blue | Phrases category theme |
| **Background** | `#E0E0E0` | Light Gray | App background |
| **Surface** | `#FFFFFF` | White | Card backgrounds |
| **Text Primary** | `#FFFFFF` | White | Card text |
| **Text Secondary** | `#B3FFFFFF` | White 70% | Subtitle text |

### Typography
- **Font:** System default (Roboto / San Francisco)
- **Japanese Words:** Bold, 25pt, Yellow tint
- **English Words:** Regular, 18pt, White 70%
- **Category Names:** Bold, 30pt, White
- **AppBar Titles:** Bold, 30pt, Black

---

## 🧩 Data Models

### CategoryModel
```dart
class CategoryModel {
  final String name;      // Display name (e.g., "Numbers")
  final int color;        // Theme color (hex)
  final Icon icon;        // Category icon
  final Widget page;      // Navigation target page

  CategoryModel({
    required this.name,
    required this.color,
    required this.icon,
    required this.page,
  });
}
```

### DataModel
```dart
class DataModel {
  String japaneseWord;    // Japanese text (Romaji)
  String englishWord;     // English translation
  String? imagePath;      // Asset image path (nullable for phrases)
  String sound;           // Asset audio path

  DataModel({
    required this.japaneseWord,
    required this.englishWord,
    this.imagePath,
    required this.sound,
  });

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
```

---

## 📚 Content Reference

### 🔢 Numbers (1-10)

| # | Japanese | Romaji | English | Audio |
|:---:|:---|:---|:---|:---:|
| 1 | 一 | Ichi | One | 🔊 |
| 2 | 二 | Ni | Two | 🔊 |
| 3 | 三 | San | Three | 🔊 |
| 4 | 四 | Shi | Four | 🔊 |
| 5 | 五 | Go | Five | 🔊 |
| 6 | 六 | Roku | Six | 🔊 |
| 7 | 七 | Nana | Seven | 🔊 |
| 8 | 八 | Hachi | Eight | 🔊 |
| 9 | 九 | Kyu | Nine | 🔊 |
| 10 | 十 | Juu | Ten | 🔊 |

### 👨‍👩‍👧‍👦 Family Members

| Japanese | Romaji | English |
|:---|:---|:---|
| お爺さん | Ojii-san | Grandfather |
| 祖母 | Sobo | Grandmother |
| 父 | Chichi | Father |
| 母 | Haha | Mother |
| 兄さん | Nii-san | Older Brother |
| 姉 | Ane | Older Sister |
| 弟 | Otouto | Younger Brother |
| 妹 | Imouto | Younger Sister |
| 息子 | Musuko | Son |
| 娘 | Musume | Daughter |

### 🎨 Colors

| Japanese | Romaji | English |
|:---|:---|:---|
| 赤 | Aka | Red |
| 緑 | Midori | Green |
| 白 | Shiro | White |
| 黄色 | Kiiro | Yellow |
| ブラック | Burakku | Black |
| 茶色 | Chairo | Brown |
| グレー | Gurē | Gray |

### 💬 Common Phrases

| Japanese | Romaji | English |
|:---|:---|:---|
| 購読することを忘れないでください | Kōdoku suru koto o wasurenaide kudasai | Don't forget to subscribe |
| プログラミングは簡単です | Puroguramingu wa kantandesu | Programming is easy |
| どこに行くの | Doko ni iku no | Where are you going |
| 名前は何ですか | Namae wa nandesu ka | What is your name? |
| 私はアニメが大好きです | Watashi wa anime ga daisukidesu | I love anime |
| ご気分はいかがですか | Go kibun wa ikagadesu ka | How are you feeling? |
| 来ますか | Kimasu ka | Are you coming? |
| はい、行きます | Hai, ikimasu | Yes, I'm coming |

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8

dev_dependencies:
  flutter_test:
    sdk: flutter
  audioplayers: ^6.6.0
  flutter_lints: ^6.0.0
```

```bash
flutter pub get
```

---

## 🚀 Getting Started

### 📋 Prerequisites

| Requirement | Version | Purpose |
|:-----------:|:-------:|:-------:|
| Flutter SDK | >=3.11.1 | Framework |
| Dart SDK | >=3.0.0 | Language |
| Android Studio / Xcode | Latest | Emulators |
| Git | Latest | Version control |

### 💻 Installation

```bash
# 1. Clone repository
git clone https://github.com/ahmed-el-bialy/nihon-seed.git
cd nihon-seed

# 2. Install dependencies
flutter pub get

# 3. Run application
flutter run

# Build for production
flutter build apk --release      # Android APK
flutter build appbundle --release # Android AAB
flutter build ios --release       # iOS
```

---

## ⚠️ Known Limitations

| Issue | Details | Status |
|:------|:--------|:------:|
| Audio not persisted | Player instance created per tap | ✅ By design |
| No favorites system | No bookmarking capability | 🔧 Planned |
| Static content | Hardcoded data lists | 🔧 Planned |
| No search | Cannot search vocabulary | 🔧 Planned |

---

## 🔮 Roadmap

- [ ] **Persist audio state** with global player management
- [ ] **Implement favorites** with Hive or SharedPreferences
- [ ] **Add search** by Japanese or English word
- [ ] **Dynamic content** from JSON or API
- [ ] **Quiz Mode** with scoring system
- [ ] **Progress Tracking** and statistics
- [ ] **Additional Categories**: Animals, Food, Weather, etc.
- [ ] **Dark Mode** support
- [ ] **Widget & unit tests**
- [ ] **CI/CD** with GitHub Actions

---

## 🤝 Contributing

Contributions are welcome!

1. **Fork** the repository
2. **Create** a feature branch: `git checkout -b feature/amazing-feature`
3. **Commit** changes: `git commit -m 'feat: Add amazing feature'`
4. **Push** to branch: `git push origin feature/amazing-feature`
5. **Open** a Pull Request

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Ahmed El-Bialy**  
*Flutter Developer | Mobile App Specialist*

<div align="center">

[![LinkedIn](https://img.shields.io/badge/LinkedIn-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmedel-bialy/)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:ah.elbialy.dev@gmail.com)
[![Phone](https://img.shields.io/badge/Phone-%2B201022121573-brightgreen?style=for-the-badge)](tel:+201022121573)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/ahmed-el-bialy)

</div>

📧 **Email:** ah.elbialy.dev@gmail.com  
📞 **Phone:** +20 102 212 1573

---

<div align="center">

### ⭐ Star this repo if you found it helpful!

**Built with ❤️ by Ahmed El-Bialy**