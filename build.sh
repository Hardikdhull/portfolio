#!/bin/bash

# 1. Clone the stable branch of the Flutter SDK
echo "Cloning Flutter SDK..."
git clone https://github.com/flutter/flutter.git -b stable

# 2. Add the newly downloaded flutter/bin to the system PATH
export PATH="$PATH:`pwd`/flutter/bin"

# 3. Explicitly enable web support for this fresh SDK
echo "Enabling Flutter Web..."
flutter config --enable-web

# 4. Verify installation
flutter --version

# 5. Install dependencies and build the web app with verbose logging
echo "Building Flutter Web..."
flutter pub get
flutter build web --release -v