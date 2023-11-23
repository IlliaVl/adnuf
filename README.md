# Funda Flutter Assignment

Flutter app where users can list of objects and their details in the separate screen.
The API endpoint to fetch the data is `https://partnerapi.funda.nl/feeds/Aanbod.svc/json/ac1b0b1572524640a0ecc54de453ea9f/?type=koop&zo=/amsterdam/tuin/&page={0}&pagesize=25`.

## How to launch

Steps to launch app:

1. Create or add to the root directory of project .env file with the following line:
   FUNDA_API_KEY=API_KEY
   Where API_KEY is the key for authorization. Replace it with the real value.

2. Run `dart run build_runner build --delete-conflicting-outputs` from the root directory of the project.
   It will create `env.g.dart` file.

3. Launch app as usual Flutter project.
