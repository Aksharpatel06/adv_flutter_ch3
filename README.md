# adv_flutter_ch3

##  3.1 connectivity_plus

### Explanation
- **Import the package**: First, import the `connectivity_plus` package.
- **StreamBuilder**: Use a `StreamBuilder` to listen for changes in the connectivity status provided by `Connectivity().onConnectivityChanged`.
- **Builder Function**: The `builder` function checks the connectivity status:
  - If `snapshot.data` contains `ConnectivityResult.mobile` or `ConnectivityResult.wifi`, it means the device is connected to the internet, and the `OnlineContent` widget is returned.
  - If the device is not connected, the `OfflineContent` widget is returned.
- **OnlineContent and OfflineContent Widgets**: These are simple widgets that display a message based on the connectivity status.

This setup ensures that the UI updates dynamically based on the network connectivity status of the device.


```dart
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Connectivity Network'),
        ),
        body: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
              if (snapshot.data!.contains(ConnectivityResult.mobile)) {
                // RETURN MOBILE DATA
                return Text('connection of mobile');
              } else if (snapshot.data!.contains(ConnectivityResult.wifi)) {
                // RETURN WIFI
                return Text('connection of wifi');
              } else {  
                // RETURN NO INTERNET CONNECTION
                return Text('no internet connection');
              }
            },
          ),
        ),
      ),
    );
  }
}
```

### Screenshots

<div align="center">
  <img src= "https://github.com/Aksharpatel06/adv_flutter_ch3/assets/143181114/b7b0d9c6-bb5a-42a5-b25f-d1dec3b830ad"  width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
  <img src= "https://github.com/Aksharpatel06/adv_flutter_ch3/assets/143181114/45e4b4bc-9dd6-4e9d-ba46-acf69a49fd63" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
  <img src= "https://github.com/Aksharpatel06/adv_flutter_ch3/assets/143181114/432d7e5c-0871-471c-bf92-3ecb3b59c7c0" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

<div align="center">
  <a href='https://github.com/Aksharpatel06/adv_flutter_ch3/tree/master/lib/ch3/task_1/view/network_error'>👉 📚 Go to dart file 📚 👈</a>
</div>

### Video 

https://github.com/Aksharpatel06/adv_flutter_ch3/assets/143181114/0e62efc0-89b6-4b3e-999e-c28ed8db4f62


## 3.2 Chrome : flutter_inappwebview Package 

# flutter_inappwebview

`flutter_inappwebview` is a Flutter package that allows you to embed WebView widgets into your Flutter application with ease. It provides a comprehensive set of features and functionalities, enabling you to control web content dynamically.

## Installation

Run `flutter pub get` to install the package.

## Usage

Here's a simple example demonstrating how to use `InAppWebView` and control it using its methods: `goBack`, `goForward`, `reload`, and `loadUrl`.


```dart
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Connectivity Network'),
        ),
        body:InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse("https://flutter.dev")),
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
      ),
    );
  }
}
```

### Screenshots

<div align="center">
  <img src= "https://github.com/Aksharpatel06/adv_flutter_ch3/assets/143181114/0efdb06b-3802-49be-b6c3-7c3ba63af174" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
  <img src= "https://github.com/Aksharpatel06/adv_flutter_ch3/assets/143181114/2095f090-1104-4e66-93ff-f688ef907d40" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

<div align="center">
  <a href='https://github.com/Aksharpatel06/adv_flutter_ch3/tree/master/lib/ch3/task_2'>👉 📚 Go to dart file 📚 👈</a>
</div>

### Video 

https://github.com/Aksharpatel06/adv_flutter_ch3/assets/143181114/d12fbab1-0dfe-4a72-9e70-eceaad66ebbe
