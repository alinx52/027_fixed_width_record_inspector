import 'app_localizations.dart';

class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa() : super('ja');

  @override
  String get appTitle => '固定幅レコード検査';

  @override
  String get appDescription => '完全オフラインでフィールド範囲をプレビューし、固定幅レイアウトに合わない行を見つけます。';

  @override
  String get languageTooltip => '言語を選択';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get appearanceTooltip => '外観を選択';

  @override
  String get appearanceMaterial => 'マテリアル';

  @override
  String get appearanceFlat => 'フラット';

  @override
  String get appearanceSoft => 'ソフト';

  @override
  String get recordTextLabel => 'レコードテキスト';

  @override
  String get recordTextHint => '固定幅の行を貼り付けるか入力';

  @override
  String get fieldWidthsLabel => 'フィールド幅';

  @override
  String get fieldWidthsHint => '例: 3,5,4';

  @override
  String get inspectRecords => 'レコードを検査';

  @override
  String get clearInput => '入力を消去';

  @override
  String get inspectionResult => '検査結果';

  @override
  String rows(int count) => '行数: $count';

  @override
  String expectedLength(int count) => '想定文字数: $count';

  @override
  String matchingRows(int count) => '一致した行: $count';

  @override
  String get allRowsMatch => 'すべての行が一致';

  @override
  String get needsReview => '要確認';

  @override
  String get fieldPreview => '先頭行のプレビュー';

  @override
  String fieldValue(int index, String value) => 'フィールド $index: $value';

  @override
  String get emptyValue => '（空）';

  @override
  String overflowValue(String value) => '超過: $value';

  @override
  String mismatchRow(int row, int actual, String status) =>
      '$row 行目・長さ $actual・$status';

  @override
  String shortBy(int count) => '$count 文字不足';

  @override
  String longBy(int count) => '$count 文字超過';

  @override
  String moreMismatches(int count) => 'ほか $count 行が不一致';

  @override
  String get recordRequired => 'レコードテキストを入力してください。';

  @override
  String get widthsRequired => 'フィールド幅を入力してください。';

  @override
  String get widthsMalformed => 'カンマ区切りの正の整数を使用してください。';

  @override
  String get widthCountInvalid => 'フィールド幅は1～50個入力してください。';

  @override
  String get widthOutOfRange => '各フィールド幅は1～1000にしてください。';

  @override
  String get widthTotalTooLarge => 'フィールド幅の合計は10000以下にしてください。';

  @override
  String get tooManyRows => 'レコードテキストは1000行以下にしてください。';

  @override
  String get textTooLarge => 'レコードテキストは100000文字以下にしてください。';
}
