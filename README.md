# Rick and Morty API Explorer

A modern Flutter application that fetches and displays character data from the Rick and Morty API,
providing a clean and intuitive interface for exploring your favorite characters from the series.

## 📱 Screenshots

| Characters List                     | Character Details                        |
|-------------------------------------|------------------------------------------|
| List of all characters with avatars | Detailed view with character information |

## ✨ Features

- **Character Listing**: Browse through all characters from the Rick and Morty universe
- **Detailed View**: Access comprehensive information about each character
- **Rich Media**: View character images with high-quality network image loading
- **Responsive UI**: Smooth and responsive interface with Material Design principles
- **Error Handling**: Graceful error handling and loading states
- **Clean Architecture**: Well-structured code following Flutter best practices

## 🏗️ Project Structure

```
lib/
├── main.dart                 # Application entry point
├── models/
│   └── character.dart        # Character data model
├── pages/
│   ├── characters_page.dart  # Main listing page
│   └── characters_detail.dart # Character details page
└── services/
    └── api_service.dart      # API communication service
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.0.0)
- Dart SDK (^3.0.0)
- Android Studio / VS Code with Flutter extensions

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/SANDRICKSON/rick-and-morty-api-flutter.git.git
   cd rick-and-morty-api-flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0          # HTTP client for API requests
  cupertino_icons: ^1.0.2  # iOS style icons
```

## 🔧 Technical Implementation

### API Integration

- **Endpoint**: `https://rickandmortyapi.com/api/character`
- **Method**: GET request using `http` package
- **Data Format**: JSON parsing with custom `fromJson` factory method

### Key Components

#### CharactersPage

- Uses `FutureBuilder` for async data fetching
- Implements `ListView.builder` for efficient list rendering
- Displays loading indicator and error states

#### CharacterDetailPage

- Receives character data via constructor parameters
- Shows detailed information including status, species, and high-res image

#### API Service

- Handles HTTP requests and responses
- Converts JSON data to `Character` model objects
- Implements proper error handling

## 🎨 UI Features

- **Material Design**: Follows Material 3 design guidelines
- **Custom Cards**: Each character displayed in an elevated card
- **Circle Avatar**: Character thumbnails in circular format
- **Responsive Layout**: Adapts to different screen sizes
- **Network Images**: Efficient image loading with caching

## 🔄 Data Flow

1. **User opens app** → `CharactersPage` loads
2. **FutureBuilder triggers** → `fetchCharacters()` called
3. **API request sent** → Data received and parsed
4. **List populated** → Characters displayed in cards
5. **User taps character** → Navigate to detail page with selected character

## 🛠️ Future Enhancements

- [ ] Add pagination support for loading more characters
- [ ] Implement search functionality
- [ ] Add filtering by status, species, or gender
- [ ] Cache images locally for offline viewing
- [ ] Add favorite characters feature
- [ ] Implement dark mode support
- [ ] Add animations and transitions
- [ ] Include episodes and locations data

## 🐛 Error Handling

The app handles various error scenarios:

- Network connection issues
- API response errors (non-200 status codes)
- Data parsing errors
- Image loading failures

## 📱 Platform Support

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Desktop (Windows, macOS, Linux)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- [Rick and Morty API](https://rickandmortyapi.com/) for providing the character data
- Flutter team for the amazing framework
- All contributors and users of this application

## 📞 Contact

Email - - sandroqatamadze79@gmail.com

Project
Link: [https://github.com/SANDRICKSON/rick-and-morty-api-flutter.git](https://github.com/SANDRICKSON/rick-and-morty-api-flutter.git)
