import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DataUploader extends GetxController {
  Future<void> uploadData() async {
    //Upload assets folder and it's items
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    //TODO:load txt and print path
    final papersInAssets = manifestMap.keys
        .where((path) =>
            path.startsWith('assets/DB/papers') && path.contains('.txt'))
        .toList();
    //print(papersInAssets);
    //Reading of the content
    for (var paper in papersInAssets) {
      String stringPaperContent = await rootBundle.loadString(paper);
      print(stringPaperContent);
    }
  }
}
