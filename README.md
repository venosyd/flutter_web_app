# Flutter Web App

Easy WebApp Widget built in Flutter.  
Works on iOS and Android.

Create a basic Flutter project:

```
$ flutter create --org your.company your_project_name
```

Add to your dependencies pubspec.yaml

```yaml
dependencies:
  flutter:
    sdk: flutter
  ...
  flutter_web_app:
    git: git@github.com:venosyd/flutter_web_app.git
  ...
```

In your lib/main.dart put exactly this:  
(OBS: Change the statusbar color and the URL)  

```dart
library myweb.app;

import 'package:flutter/material.dart';
import 'package:flutter_web_app/flutter_web_app.dart';

void main() => runApp(
    WebApp(
        url: 'https://<your-website-url>', 
        statusBarColor: <your-preferred-color>
        )
    );
```

Run the project

```
$ flutter run
```
