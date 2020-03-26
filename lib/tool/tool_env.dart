import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final config = {
    'apiKey': Platform.environment['API_KEY'],
    'authDomain': Platform.environment['AUTH_DOMAIN'],
    'databaseUrl': Platform.environment['DATABASE_URL'],
    'projectId': Platform.environment['PROJECT_ID'],
    'storageBucket': Platform.environment['STORAGE_BUCKET'],
    'messagingSenderId': Platform.environment['MESSAGING_SENDER_ID'],
    'appId': Platform.environment['APP_ID'],
    'measurementId': Platform.environment['MEASUREMENT_ID'],
  };

  final filename = 'lib/.env.dart';
  File(filename).writeAsString('final environment = ${json.encode(config)};');
}