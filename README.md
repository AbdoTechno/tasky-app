# Tasky - Task Management Application

A professional Flutter application for managing and organizing daily tasks. Tasky provides an intuitive interface for users to create, manage, track, and complete their tasks efficiently.

## Project Overview

Tasky is a complete Flutter application demonstrating clean architecture principles, state management, and responsive UI design. The application provides comprehensive task management features with a focus on user experience and performance.

## Features

- User authentication and profile management
- Create, read, update, and delete tasks
- Task organization and categorization
- Profile management and user preferences
- Responsive design for multiple screen sizes
- Clean and intuitive user interface
- Image picker integration for profile pictures

## Project Structure

```
lib/
├── main.dart              # Application entry point
├── core/                  # Core functionality layer
│   ├── components/        # Reusable UI components
│   ├── constants/         # Application constants
│   ├── enums/             # Enumeration definitions
│   ├── services/          # Core services (API, storage, etc.)
│   ├── theme/             # Theme configuration and styling
│   └── widgets/           # Common widgets
├── features/              # Feature modules
│   ├── add_task/          # Add task feature
│   ├── home/              # Home screen
│   ├── navigation/        # Navigation management
│   ├── profile/           # User profile management
│   ├── tasks/             # Tasks display and management
│   └── welcome/           # Welcome/onboarding screen
└── models/                # Data models
    └── task_model.dart    # Task data model
```

## Technology Stack

- **Framework**: Flutter 3.x
- **Language**: Dart
- **State Management**: Provider (or similar)
- **Storage**: Shared Preferences
- **Image Handling**: Image Picker
- **Platform Support**: Android and iOS

## Installation and Setup

### Prerequisites

- Flutter SDK (version 3.0 or higher)
- Dart SDK
- Android Studio or Xcode for emulator/device testing
- GitHub account (optional, for version control)

### Getting Started

1. Clone the repository:
```bash
git clone https://github.com/AbdoTechno/tasky-app.git
cd tasky
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run
```

4. Build for release (optional):
```bash
flutter build apk  # For Android
flutter build ios  # For iOS
```

## Dependencies

Key Flutter packages used in this project:

- **image_picker**: For selecting and capturing images
- **path_provider**: For file system access
- **shared_preferences**: For local data persistence
- **flutter_plugin_android_lifecycle**: For Android lifecycle management

View complete dependencies in [pubspec.yaml](pubspec.yaml).

## Architecture and Design Patterns

The project follows Clean Architecture principles with clear separation of concerns:

- **Models Layer**: Data structures and domain models
- **Core Layer**: Shared utilities, themes, constants, and services
- **Features Layer**: Feature-specific UI, logic, and state management

## Development

### Running Tests

```bash
flutter test
```

### Code Analysis

```bash
flutter analyze
```

### Formatting Code

```bash
flutter format .
```

## Build and Deployment

### Android Build

```bash
flutter build apk --release
```

### iOS Build

```bash
flutter build ios --release
```

## Contributing

Contributions are welcomed. To contribute:

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## Author

Developed by Abdo Techno

GitHub: [AbdoTechno](https://github.com/AbdoTechno)

## License

This project is open source and available under the MIT License.

## Additional Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Language Guide](https://dart.dev/guides)
- [Flutter Best Practices](https://docs.flutter.dev/development/best-practices)

## Support

For issues or questions, please create an issue in the GitHub repository.
