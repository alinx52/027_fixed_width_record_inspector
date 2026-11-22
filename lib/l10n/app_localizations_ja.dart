// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

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
  String rows(int count) {
    return '行数: $count';
  }

  @override
  String expectedLength(int count) {
    return '想定文字数: $count';
  }

  @override
  String matchingRows(int count) {
    return '一致した行: $count';
  }

  @override
  String get allRowsMatch => 'すべての行が一致';

  @override
  String get needsReview => '要確認';

  @override
  String get fieldPreview => '先頭行のプレビュー';

  @override
  String fieldValue(int index, String value) {
    return 'フィールド $index: $value';
  }

  @override
  String get emptyValue => '（空）';

  @override
  String overflowValue(String value) {
    return '超過: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return '$row 行目・長さ $actual・$status';
  }

  @override
  String shortBy(int count) {
    return '$count 文字不足';
  }

  @override
  String longBy(int count) {
    return '$count 文字超過';
  }

  @override
  String moreMismatches(int count) {
    return 'ほか $count 行が不一致';
  }

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

  @override
  String get helpTooltip => 'ヘルプと使い方';

  @override
  String get helpTitle => '固定幅レコード検証ガイド';

  @override
  String get helpProblemSolvedTitle => '解決する課題';

  @override
  String get helpProblemSolvedContent =>
      '金融、EDI、メインフレーム等で使用される固定幅テキストを定義された桁数ごとに分解し、長さの不一致やズレのある行をオフラインで検出します。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '固定幅テキストを貼り付け、各フィールドの桁数をカンマ区切りで入力（例: 10, 5, 20）し、「レコード検査」をタップします。';

  @override
  String get helpReadingResultsTitle => '結果の見方';

  @override
  String get helpReadingResultsContent =>
      '期待行長、総行数、適合行数とともに、各フィールドの分割プレビューおよび長さが短い・長い異常行を表示します。';

  @override
  String get helpExampleTitle => '具体例';

  @override
  String get helpExampleContent =>
      '幅: 「5, 10」（期待行長 = 15文字）\n行: \"12345ABCDEFGHIJ\" -> フィールド 1: \"12345\", フィールド 2: \"ABCDEFGHIJ\" (適合 15文字)。';

  @override
  String get helpLimitsTitle => '検証と制限事項';

  @override
  String get helpLimitsContent =>
      '桁数に基づく位置境界の検査ツールです。各フィールドの業務的な正当性、銀行決済フォーマット、EBCDIC等の特殊文字コードを保証するものではありません。';

  @override
  String get helpDataAndPrivacyTitle => 'ローカルデータと広告';

  @override
  String get helpDataAndPrivacyContent =>
      '入力されたレコードはファイルアクセスや外部送信なしで端末のメモリ内でのみ処理されます。画面下部に標準AdMobバナーが表示されます。';
}
