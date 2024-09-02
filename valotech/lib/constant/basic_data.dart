class MapName {
  static List<String> mapName = [
    'アイスボックス',
    'アセント',
    'アビス',
    'サンセット',
    'スプリット',
    'バインド',
    'パール',
    'フラクチャー',
    'ブリーズ',
    'ヘイブン',
    'ロータス',
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
}

class CharacterName {
  //キャラ名
  static List<String> duelistName = [
    'ジェット',
    'ヨル',
    'レイズ',
  ];
  static List<String> initiatorName = [
    'KAY/O',
    'ゲッコー',
    'スカイ',
    'ソーヴァ',
    'フェイド',
    'ブリーチ',
  ];
  static List<String> controllerName = [
    'ヴァイパー',
    'オーメン',
    'クローブ',
    'ハーバー',
    'ブリムストーン',
  ];
  static List<String> sentinelName = [
    'キルジョイ',
    'サイファー',
    'セージ',
    'チェンバー',
    'デッドロック',
  ];
}

class CharaRoleList {
  //ロール名とキャラ名の結びつき
  static Map<String, List<String>> charaRoleList = {
    CharacterRole.characterRole[0]: CharacterName.duelistName,
    CharacterRole.characterRole[1]: CharacterName.initiatorName,
    CharacterRole.characterRole[2]: CharacterName.controllerName,
    CharacterRole.characterRole[3]: CharacterName.sentinelName,
  };
}

class AtkDfName {
  static List<String> atkDfName = [
    'アタッカー',
    'ディフェンダー',
  ];
}
