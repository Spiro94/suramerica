// ignore_for_file: unsafe_html

import 'package:flutter/services.dart';
import 'package:universal_html/html.dart' as html;

Future<void> openPDFInNewTab(String filePath) async {
  final bytes = await rootBundle.load(filePath);

  final blob = html.Blob([bytes], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.window.open(url, "_blank");
  html.Url.revokeObjectUrl(url);
}
