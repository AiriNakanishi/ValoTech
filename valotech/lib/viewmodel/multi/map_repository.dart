import 'dart:io';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:valotech/model/option_image.dart';

//Firestoreからデータを取得する役割
class MapRepository {
  final CollectionReference _mapRef =
      FirebaseFirestore.instance.collection('Maps'); //コレクション名:Mapsを参照

  Future<MapModel?> getMapImage() async {
    MapModel? map;
    //await _mapRef.where('nameEng', isEqualTo: 'ASCENT').get().then(
    map = await _mapRef.get().then(
      (QuerySnapshot<Object?> querySnapshot) {
        for (var docSnapshot in querySnapshot.docs) {
          map = MapModel.fromFirestore(docSnapshot);
          debugPrint('MapRepository');
        }
        debugPrint("aiueo");
        var docSnapshot = querySnapshot.docs[0];
        map = MapModel.fromFirestore(docSnapshot);
      },
    );
    return map;
  }
}



// class MapRepository {
//   final CollectionReference _mapRef =
//       FirebaseFirestore.instance.collection('map');
//   final FirebaseStorage _storageRef = FirebaseStorage.instance;

//   Future<List<_MapImage>> getAllPosts() async {
//     List<String> maps = [];
//     await _mapRef.orderBy('map_datetime', descending: true).get().then(
//       (QuerySnapshot<Object?> querySnapshot) {
//         for(var docSnapshot in querySnapshot.docs){
//           maps.add(_MapImage.fromFirestore(docSnapshot));
//           String map = maps.fromFirestore(docSnapshot);
//           //debugPrint("${post.id}：${post.description}：${post.imageUrl}");
//         }
//       }
//     );
//     return maps;
//   }
// }
