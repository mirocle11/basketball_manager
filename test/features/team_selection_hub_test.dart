import 'dart:convert';


import 'package:basketball_manager/features/team_selection/view/team_selection_hub.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void _registerMockAssets() {
  const img =
      'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADElEQVR42mP8z8BQDwAFgwJ/lK62mAAAAABJRU5ErkJggg==';
  final bytes = base64Decode(img);
  final byteData = bytes.buffer.asByteData();
  final jsonManifest = utf8.encode('{}');
  final jsonData = ByteData.view(Uint8List.fromList(jsonManifest).buffer);
  final binManifest = const StandardMessageCodec().encodeMessage(<String, dynamic>{});
  final binding = TestWidgetsFlutterBinding.ensureInitialized();
  binding.defaultBinaryMessenger.setMockMessageHandler(
    'flutter/assets',
    (message) async {
      final key = utf8.decode(message!.buffer.asUint8List());
      if (key == 'AssetManifest.json' || key == 'FontManifest.json') {
        return jsonData;
      }
      if (key == 'AssetManifest.bin') {
        return binManifest;
      }
      return byteData;
    },
  );
}

void main() {
  setUpAll(_registerMockAssets);

  testWidgets('TeamSelectionHub renders', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: TeamSelectionHub()));
    expect(find.text('Confirm'), findsOneWidget);
  });
}
