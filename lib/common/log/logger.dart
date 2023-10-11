

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';

void initLogging() {
  Logger.root.level = Level.ALL;

  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
    _writeLogToFile(record);
  });
}

void _writeLogToFile(LogRecord record) async {
  final directory = await getApplicationDocumentsDirectory();

  var path = '${directory.path}/line_sign_log.txt';
  if (Platform.isWindows) {
    path = './line_sign_log.txt';
  }
  final file = File(path);
  debugPrint(file.path);
  final logMessage = '${record.level.name}: ${record.time}: ${record.message}\n';

  await file.writeAsString(logMessage, mode: FileMode.append);
}