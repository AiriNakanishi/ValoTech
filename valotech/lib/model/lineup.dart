import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Lineup {
  final String map;
  final String character;
  final String ability;
  final String lineupId;
  //↓複数枚の画像を表示したいからlistにしたほうが良きかも
  final Uri lineupImageUrl;
  final Uri lineupVideoUrl;
  final List favoriteArray;

  Lineup({
    required this.map,
    required this.character,
    required this.ability,
    required this.lineupId,
    required this.lineupImageUrl,
    required this.lineupVideoUrl,
    required this.favoriteArray,
  });

  factory Lineup.fromFirestore(
    DocumentSnapshot<Object?> snapshot,
  ) {
    final data = snapshot.data() as Map<String, dynamic>;
    String map = data['map'];
    //if (poster == '') throw Exception("invalid poster");
    String character = data['character'];
    String ability = data['ability'];
    String lineupId = data['lineupId'];
    Uri lineupImageUrl = Uri.parse(data['lineup_image_url']);
    Uri lineupVideoUrl = Uri.parse(data['lineup_video_url']);
    List favorites = data['favorite_array'] as List;

    //_post_datetime = data?['post_datetime'].toDate();
    debugPrint("lineup_fromfirestore");

    return Lineup(
      map: map,
      character: character,
      ability: ability,
      lineupId: lineupId,
      lineupImageUrl: lineupImageUrl,
      lineupVideoUrl: lineupVideoUrl,
      favoriteArray: favorites,
    );
  }
}
