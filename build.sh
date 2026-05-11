#!/bin/bash

# 1. Clone the stable branch of the Flutter SDK
echo "Cloning Flutter SDK..."
git clone https://github.com/flutter/flutter.git -b stable

# 2. Add the newly downloaded flutter/bin to the system PATH
export PATH="$PATH:`pwd`/flutter/bin"

# 3. Verify installation
flutter --version

# 4. Install dependencies and build the web app
echo "Building Flutter Web..."
flutter pub get
flutter build web --release