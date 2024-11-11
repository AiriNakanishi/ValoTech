import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

//アプリ内で使用する画像のデータをまとめたもの
class OptionImage {
  static final MapModel mapImage = MapModel(
    nameEng: 'ASCENT',
    image:
        'gs://valotech-a3488.appspot.com/01_Valotech/01_Icon/03_MAP/ASCENT.webp',
  );
  // static final CharacterImage characterImage = CharacterImage();
  // static final CharacterImage abilityImage = AbilityImage();
}

class MapModel {
  final String nameEng;
  final String image;

  MapModel({
    required this.nameEng,
    required this.image,
  });

  //Firestoreからデータを取得し、それを使って MapImage のインスタンスを生成
  factory MapModel.fromFirestore(DocumentSnapshot<Object?> snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return MapModel(
      nameEng: data['nameEng'],
      image: data['image'], // ここではFirestoreから取得したままのURLを保持
    );
  }

  // Firebase StorageからダウンロードURLを取得
  Future<String> getDownloadUrl() async {
    return await FirebaseStorage.instance
        .refFromURL(this.image)
        .getDownloadURL();
  }
}

// void checkStorageAccess() async {
//   try {
//     // URLを直接参照して画像を取得
//     String url = await FirebaseStorage.instance
//         .refFromURL(
//             'gs://valotech-a3488.appspot.com/01_Valotech/01_Icon/03_MAP/ASCENT.webp')
//         .getDownloadURL();
//     debugPrint('Image URL: $url');
//   } catch (e) {
//     debugPrint('Error: $e');
//   }
// }
