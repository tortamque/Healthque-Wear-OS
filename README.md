<a href="https://firebase.google.com/"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Firebase_icon.svg/2048px-Firebase_icon.svg.png" align="right" width="8%"></a>
<a href="https://flutter.dev/"><img src="https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_flutter_icon_130599.png" align="right" width="8%"></a>
<a href="https://github.com/tortamque/Healthque/releases"><img src="https://github.com/user-attachments/assets/d33b1699-9099-4a25-be96-57e4b36e067e" align="right" width="8%"></a>

# Healthque Mini

## Before you read...
Healthque Mini is a core part of my diploma project, serving as the Flutter-based companion app for Wear OS smartwatches. It extends the real-time tracking capabilities of the main Healthque mobile application, providing on-wrist access to your workouts and vital health metrics. For full documentation covering the mobile app, database structure, synchronization algorithms, and more details about the entire project, please refer to the [main Healthque repository](https://raw.githubusercontent.com/tortamque/Healthque).

## Description
Healthque Mini is a Flutter-based companion application designed for Wear OS smartwatches. It extends the core functionality of the main Healthque mobile app, allowing users to monitor their workouts, health metrics and medication status directly from their wrist. This app provides quick, glanceable summaries and charts, making it convenient to stay updated on your health progress without needing to access your phone.<br>
Adhering to the same Clean Architecture principles as the primary Healthque application, Healthque Mini leverages a shared codebase for business logic, ensuring consistent, efficient data processing and delivering a seamless, intuitive user experience optimized for Wear OS devices.

## Table of Contents
- [Used Technologies](#used-technologies)
- [Architecture](#architecture)
- [Features](#features)
- [Supported platforms](#supported-platforms)
- [Deployment](#deployment)
- [Screenshots and Demo](#screenshots)
- [Changelog](#changelog)
- [Diagrams](#diagrams)
- [Used Packages](#used-packages)
- [Versions](#versions)
- [License](#license)

<a name="used-technologies"></a>
## Used Technologies

Healthque Mini utilizes **Firebase Authentication** for Google account sign-in.  
It fetches and displays your personalized health data from **Firebase Realtime Database**, which acts as the central cloud storage.  

For efficient on-device data persistence Healthque Mini employs **Hive**.  

The application supports both English and Ukrainian languages, implemented using Flutter’s `flutter_localizations` and `flutter_localization` packages.

<a name="architecture"/></a>
## Architecture
Healthque fully embraces the Clean Architecture pattern, incorporating Bloc, Repository, Separation of Concerns, and Dependency Injection patterns.</br>
Clean Architecture consists of the following layers: 
1) Data Layer
2) Domain Layer (Business Logic)
3) Presentation Layer (UI) </br></br>

<b>Call Flow Diagram</b>:<br>
<img width="65%" alt="Call Flow Diagram" src="https://github.com/tortamque/Poetlum/assets/90132962/6d2e5a2e-cdc8-4a62-9a6f-ca824da2b00c"><br>

<b>Onion Diagram</b>:<br>
<img width="65%" alt="Onion Diagram" src="https://github.com/tortamque/Poetlum/assets/90132962/75b02676-81c2-4fe0-8372-dc3783ea0849"><br>

<a name="features"></a>
## Features
- Sign-in with your Google account to link with your Healthque mobile app data  
- Instant access to automatically synced health data and workouts from your phone  
- Offline access to view your most recent health records even without a connection  
- On-wrist summaries and historical charts for your workouts  
- Monitor vital signs: quick glances at heart rate, blood pressure, glucose, temperature, hydration, stress, and mood trends  
- Intuitive dashboards presenting key health metrics in easy-to-read charts  
- Personalize the app's appearance with customizable color themes  
- Full support for both English and Ukrainian languages

<a name="supported-platforms"/></a>
## Supported Platforms
Healthque Mini is a companion application designed for **Wear OS** smartwatches.

<a name="deployment"></a>
## Deployment

To deploy the Healthque app, follow these steps:
1. Ensure the Flutter SDK is installed.
2. Clone the repository and install dependencies:
   ```bash
   flutter pub get
    ```
3. In the Firebase Console, create a new project and add an Android app using your package name (found in ```android/app/src/main/AndroidManifest.xml```).
4. Download the generated ```google-services.json``` and place it into ```android/app/```.
5. Generate firebase_options.dart via FlutterFire CLI
```dart pub global activate flutterfire_cli
flutterfire configure
```
5. Build the release Android App Bundle
```flutter build appbundle --release```


<a name="screenshots"/></a>
## Screenshot
<details>
  <summary>Click here to view a lot of screenshots 👀</summary>

  <img src="https://github.com/user-attachments/assets/17f43dca-1806-46aa-8194-42e9b467ddf9" alt="Screenshot_1" width="200">
  <img src="https://github.com/user-attachments/assets/2453ae33-b62a-4d41-9b97-a4b129793bd3" alt="Screenshot_2" width="200">
  <img src="https://github.com/user-attachments/assets/53cf312b-d7e3-4174-855f-f1d9dba3e588" alt="Screenshot_3" width="200">
  <img src="https://github.com/user-attachments/assets/dd15372b-a43e-41e3-b3c5-1a7c1f3b381b" alt="Screenshot_4" width="200">
  <img src="https://github.com/user-attachments/assets/68cf197b-7a2b-448b-9a36-a7bf5019017d" alt="Screenshot_5" width="200">
  <img src="https://github.com/user-attachments/assets/b0ed9eac-0157-4ee5-9a57-ce195786c445" alt="Screenshot_6" width="200">
  <img src="https://github.com/user-attachments/assets/bceaa83a-1010-4ab1-a4a0-437400240fe2" alt="Screenshot_7" width="200">
  <img src="https://github.com/user-attachments/assets/3accf247-056d-4f0e-a900-fba36d4e00ee" alt="Screenshot_8" width="200">
  <img src="https://github.com/user-attachments/assets/c3e745a4-871b-4f4b-9e05-01abd2e27e98" alt="Screenshot_9" width="200">
  <img src="https://github.com/user-attachments/assets/a0f9922d-a56c-47f7-a5c6-408203096b1b" alt="Screenshot_10" width="200">
  <img src="https://github.com/user-attachments/assets/4ce7656d-0a7c-4826-9232-dfffa6062b94" alt="Screenshot_11" width="200">
  <img src="https://github.com/user-attachments/assets/4d5993ff-c351-4c46-936f-803d2494a572" alt="Screenshot_12" width="200">
  <img src="https://github.com/user-attachments/assets/6a7d13ba-d21b-45f9-a0dd-b4e8665cff43" alt="Screenshot_13" width="200">
  <img src="https://github.com/user-attachments/assets/b473e649-cb4c-493b-8a2f-62e57459adcf" alt="Screenshot_14" width="200">
  <img src="https://github.com/user-attachments/assets/86fde2fb-2a0e-46b2-932a-98af7386abbf" alt="Screenshot_15" width="200">
  <img src="https://github.com/user-attachments/assets/d1c16b99-644c-431a-a896-a67a3a72e53e" alt="Screenshot_16" width="200">
  <img src="https://github.com/user-attachments/assets/ad692ef2-b64b-4e42-b482-ce68a35d308a" alt="Screenshot_17" width="200">
  <img src="https://github.com/user-attachments/assets/b2fdef3d-7254-4b71-ae27-f378f2b25ce0" alt="Screenshot_18" width="200">
  <img src="https://github.com/user-attachments/assets/fc8c4284-3b82-49a4-89d2-768f1ce5da3f" alt="Screenshot_19" width="200">
  <img src="https://github.com/user-attachments/assets/182638f4-2c23-453f-992f-260c0810d60b" alt="Screenshot_20" width="200">
  <img src="https://github.com/user-attachments/assets/b297ab44-5dce-42c6-a3ea-9a901c8d84f5" alt="Screenshot_21" width="200">
  <img src="https://github.com/user-attachments/assets/f924734e-aee4-441f-ad65-6a5908da2caf" alt="Screenshot_22" width="200">
  <img src="https://github.com/user-attachments/assets/3e16d248-f37b-4fcb-abb7-b6f460bb0391" alt="Screenshot_23" width="200">
  <img src="https://github.com/user-attachments/assets/8de57c6c-4283-4600-bf51-9f1bf6a19a58" alt="Screenshot_24" width="200">
  <img src="https://github.com/user-attachments/assets/aadc0213-fdcc-4d07-9c5e-d11c4cb2cb2c" alt="Screenshot_25" width="200">
  <img src="https://github.com/user-attachments/assets/17bc88d8-3297-4821-acd6-0a050a656c58" alt="Screenshot_26" width="200">
  <img src="https://github.com/user-attachments/assets/bae6d246-6478-405f-9eea-b0fd09c6dfd4" alt="Screenshot_27" width="200">
  <img src="https://github.com/user-attachments/assets/639cf2b4-8a85-4e23-b675-3be1c36f2bcf" alt="Screenshot_28" width="200">
  <img src="https://github.com/user-attachments/assets/3dcd0424-7bef-479d-8bde-b287607f4c8d" alt="Screenshot_29" width="200">
  <img src="https://github.com/user-attachments/assets/fb92aa50-99a4-4199-b597-bc53bef5c7fc" alt="Screenshot_30" width="200">

</details>

<a name="changelog"/></a>
## Changelog
### [1.0] - 10.05.2025
  #### Added
 - Initial release.

<a name="diagrams"/></a>
## Diagrams
### Usecase Diagram
<img src="https://github.com/user-attachments/assets/9664702e-b038-4e70-a977-40b15c524136" alt="Usecase" width="700">

### Sequence Diagram
<img src="https://github.com/user-attachments/assets/7b0ffa35-6082-4311-b2a8-2c98a1a2f851" alt="Sequence" width="700">

<a name="used-packages"/></a>
## Used Packages
The Healthque Mini app utilizes the following packages:
| Name                            | Version      | Link on pub.dev                                                   |
|---------------------------------|--------------|-------------------------------------------------------------------|
| firebase_auth                   | 5.5.2        | [Link](https://pub.dev/packages/firebase_auth)                    |
| firebase_core                   | 3.13.0       | [Link](https://pub.dev/packages/firebase_core)                    |
| flutter_bloc                    | 9.1.0        | [Link](https://pub.dev/packages/flutter_bloc)                     |
| wear_os_plugin                  | 0.3.0        | [Link](https://pub.dev/packages/wear_os_plugin)                   |
| freezed_annotation              | 3.0.0        | [Link](https://pub.dev/packages/freezed_annotation)               |
| freezed                         | 3.0.4        | [Link](https://pub.dev/packages/freezed)                          |
| google_sign_in                  | 6.3.0        | [Link](https://pub.dev/packages/google_sign_in)                   |
| intl_utils                      | 2.8.10       | [Link](https://pub.dev/packages/intl_utils)                       |
| intl                            | 0.19.0       | [Link](https://pub.dev/packages/intl)                             |
| go_router                       | 14.8.1       | [Link](https://pub.dev/packages/go_router)                        |
| flutter_localization            | 0.3.1        | [Link](https://pub.dev/packages/flutter_localization)             |
| fl_chart                        | 0.70.2       | [Link](https://pub.dev/packages/fl_chart)                         |
| get_it                          | 8.0.3        | [Link](https://pub.dev/packages/get_it)                           |
| hive_flutter                    | 1.1.0        | [Link](https://pub.dev/packages/hive_flutter)                     |
| hive_generator                  | 2.0.1        | [Link](https://pub.dev/packages/hive_generator)                   |
| gap                             | 3.0.1        | [Link](https://pub.dev/packages/gap)                              |
| firebase_database               | 11.3.5       | [Link](https://pub.dev/packages/firebase_database)                |
| hive                            | 2.2.3        | [Link](https://pub.dev/packages/hive)                             |
| internet_connection_checker_plus| 2.7.1        | [Link](https://pub.dev/packages/internet_connection_checker_plus)|

<a name="versions"></a>
## Flutter & Dart Versions

- Flutter 3.29.3  
- Dart 3.7.2

<a name="licenses"/></a>
## License
Apache License Version 2.0
