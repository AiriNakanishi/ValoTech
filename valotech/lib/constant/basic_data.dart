//アビス消してます！！！
class MapName {
  static List<String> mapJpnName = [
    'アセント',
    'スプリット',
    'ヘイブン',
    'バインド',
    'アイスボックス',
    'ブリーズ',
    'フラクチャー',
    'パール',
    'ロータス',
    'サンセット',
    //'アビス',
  ];
  static List<String> mapEngName = [
    'ASCENT',
    'SPLIT',
    'HAVEN',
    'BIND',
    'ICEBOX',
    'BREEZE',
    'FRACTURE',
    'PEARL',
    'LOTUS',
    'SUNSET',
    //'ABYSS',
  ];

  static List<JpnEngList> mapNameList = [
    for (int i = 0; i < mapJpnName.length; i++)
      JpnEngList(mapJpnName[i], mapEngName[i]),
  ];
}

class CharacterRole {
  //ロール名
  static List<String> characterRole = [
    'デュエリスト',
    'イニシエーター',
    'コントローラー',
    'センチネル',
  ];
  static List<String> charaRoleEng = [
    'duelist',
    'initiator',
    'controller',
    'sentinel',
  ];
}

class CharacterName {
  //キャラ名
  static List<String> charaJpnName = [
    'ブリムストーン',
    'フェニックス',
    'セージ',
    'ソーヴァ',
    'ヴァイパー',
    'サイファー',
    'レイナ',
    'キルジョイ',
    'ブリーチ',
    'オーメン',
    'ジェット',
    'レイズ',
    'スカイ',
    'ヨル',
    'アストラ',
    'KAY/O',
    'チェンバー',
    'ネオン',
    'フェイド',
    'ハーバー',
    'ゲッコー',
    'デッドロック',
    'アイソ',
    'クローブ',
    'ヴァイス',
  ];
  static List<String> charaEngName = [
    'Brimstone',
    'Phoenix',
    'Sage',
    'Sova',
    'Viper',
    'Cypher',
    'Reyna',
    'Killjoy',
    'Breach',
    'Omen',
    'Jett',
    'Raze',
    'Skye',
    'Yoru',
    'Astra',
    'KAYO',
    'Chamber',
    'Neon',
    'Fade',
    'Harbor',
    'Gekko',
    'Deadlock',
    'Iso',
    'Clove',
    'Vyse',
  ];
  static List<JpnEngList> characterName = [
    for (int i = 0; i < charaJpnName.length; i++)
      JpnEngList(charaJpnName[i], charaEngName[i]),
  ];
}

class AtkDfName {
  static List<String> atkDfName = [
    'アタッカー',
    'ディフェンダー',
  ];
}

class JpnEngList {
  JpnEngList(this.jpn, this.eng);
  String jpn;
  String eng;
}
