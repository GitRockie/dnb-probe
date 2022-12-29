import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataUploader extends GetxController {
  Future<void> uploadData() async {
    //Upload assets folder and it's items
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final papersInAssets = manifestMap.keys
        .where((path) =>
            path.startsWith('assets/DB/papers') && path.contains('.txt'))
        .toList();
    print(papersInAssets);
  }
}
