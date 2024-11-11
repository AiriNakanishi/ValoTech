import 'package:flutter/material.dart';
import 'package:valotech/model/option_image.dart';
import 'package:valotech/viewmodel/multi/map_repository.dart';

//Firestoreからデータを取得し、マップ画像を表示するためのUIウィジェット
class ImageTest extends StatelessWidget {
  final MapRepository mapRepository = MapRepository();

  ImageTest({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mapRepository.getMapImage(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              if (snapshot.data == null)
                return Text("nullです");
              else
                Text(snapshot.data!.nameEng);
            default:
              return Text("コネクション");
          }
          return SizedBox.shrink();
        });
    // return FutureBuilder(
    //   future: mapRepository.getMapImage(),
    //   builder: (BuildContext context, AsyncSnapshot<List<MapModel>> snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return Center(child: CircularProgressIndicator());
    //     }
    //     if (snapshot.hasError) {
    //       return Center(child: Text("Error: ${snapshot.error}"));
    //     }
    //     if (!snapshot.hasData || snapshot.data!.isEmpty) {
    //       return Center(child: Text("No data found"));
    //     }

    //     // 取得した画像URLをリスト表示
    //     return ListView.builder(
    //       itemCount: snapshot.data!.length,
    //       itemBuilder: (context, index) {
    //         final mapModel = snapshot.data![index];
    //         return FutureBuilder(
    //           future: mapModel.getDownloadUrl(), // ここでFirebase Storageの公開URLを取得
    //           builder: (BuildContext context,
    //               AsyncSnapshot<String> downloadUrlSnapshot) {
    //             if (downloadUrlSnapshot.connectionState ==
    //                 ConnectionState.waiting) {
    //               return CircularProgressIndicator();
    //             }
    //             if (downloadUrlSnapshot.hasError) {
    //               return Text("Error loading image");
    //             }

    //             return ListTile(
    //               title: Text(mapModel.nameEng),
    //               leading: Image.network(
    //                   downloadUrlSnapshot.data!), // 公開URLを使って画像を表示
    //             );
    //           },
    //         );
    //       },
    //     );
    //   },
    // );
  }
}
