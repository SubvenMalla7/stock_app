echo "flutter pub get"
flutter pub get


echo "flutter pub run build_runner build"
flutter pub run build_runner build  --delete-conflicting-outputs


echo "flutter packages pub run build_runner build"
flutter packages pub run build_runner build

echo "flutter packages pub run build_runner build watch"
dart run build_runner watch --delete-conflicting-outputs

echo "flutter build apk --no-shrink"
flutter build apk --no-shrink

echo "flutter pub add"
flutter pub add

echo "Flavor"

echo "dev debug"
flutter run --flavor dev

flutter clean && flutter pub get

echo "staging debug"
flutter run --release --flavor staging --target lib/main_staging.dart

echo "production release"
flutter run --release --flavor production --target lib/main_production.dart

echo "dev release"
flutter run --release --flavor development --target lib/main_development.dart




