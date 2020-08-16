# Polarmorph

A sample flutter app written for an imaginary commercial art space called "Polarmorph Coffee & Art." This project is created for educational purposes.

[Video demo on iPhone](preview/iPhone.mov)

[Video demo on iPad](preview/iPad.mov)

# Install instruction

Before trying it out, make sure that you have follow the steps to set up the environment:

1. Set up the Dart and Flutter environment detailed [here](https://flutter.dev/docs/get-started/install).
2. Install XCode and/or Android Studio and have a device simulator ready, or set up your physical device for testing.
3. This app relies on the [Google Maps for Flutter](https://pub.dev/packages/google_maps_flutter) to interact with Google Maps APIs on iOS and Android. To ensure no API keys are shared in this public repository, the files that store the keys are included in the `.gitignore` file and will **NOT** be uploaded to the github repository unless modified. Please generate your own Google Maps API keys after cloning this repository and playing with it yourself. The locations of the keys are:
    - The API key for the Android client is stored in `Android/key.properties` as `google.map.key=<your_google_maps_api_key>`.
    - The API key for the iOS client is stored in `ios/Runner/Key.swift` as `let googleMapsApiKey=<your_google_maps_api_key>`.
