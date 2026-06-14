# Login Guide - BUMDes Jabar App

## Backend Status
✅ **Backend Laravel Server**: Running on `http://127.0.0.1:8000`

## Default Test Credentials

### Test User (Pembeli/Buyer)
- **Email**: `test@example.com`
- **Password**: `password123`

## How to Login

1. **Start Backend Server** (if not running):
   ```bash
   cd bumdes_jabar/laravel
   php artisan serve --host=127.0.0.1 --port=8000
   ```

2. **Run Flutter Frontend**:
   ```bash
   cd bumdes_frontend
   flutter run
   ```

3. **Login with Credentials**:
   - Email: `test@example.com`
   - Password: `password123`

## For Android Emulator

If running on Android Emulator, update `lib/src/config.dart`:

```dart
const String backendUrl = 'http://10.0.2.2:8000';
```

The `10.0.2.2` is a special alias that Android Emulator uses to refer to the host machine's localhost.

## For Physical Device

If running on a physical device connected to the same WiFi network:

1. Find your computer's IP address (e.g., `192.168.1.100`)
2. Update `lib/src/config.dart`:

```dart
const String backendUrl = 'http://192.168.1.100:8000';
```

3. Make sure the device can ping the IP address on port 8000

## Database Info

- **Database**: `bumdes_jabar`
- **Host**: `localhost`
- **Port**: `3306`
- **User**: `root`
- **Password**: (empty)

All tables have been created and seeded with test data.
