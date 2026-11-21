import 'app_localizations.dart';

class AppLocalizationsZhHans extends AppLocalizations {
  AppLocalizationsZhHans() : super('zh-Hans');

  @override
  String get appTitle => '定宽记录检查器';

  @override
  String get appDescription => '完全离线预览字段切片，并找出不符合定宽布局的行。';

  @override
  String get languageTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get recordTextLabel => '记录文本';

  @override
  String get recordTextHint => '粘贴或输入定宽行';

  @override
  String get fieldWidthsLabel => '字段宽度';

  @override
  String get fieldWidthsHint => '例如：3,5,4';

  @override
  String get inspectRecords => '检查记录';

  @override
  String get clearInput => '清除输入';

  @override
  String get inspectionResult => '检查结果';

  @override
  String rows(int count) => '行数：$count';

  @override
  String expectedLength(int count) => '预期长度：$count';

  @override
  String matchingRows(int count) => '匹配行数：$count';

  @override
  String get allRowsMatch => '所有行均匹配';

  @override
  String get needsReview => '需要检查';

  @override
  String get fieldPreview => '首行预览';

  @override
  String fieldValue(int index, String value) => '字段 $index：$value';

  @override
  String get emptyValue => '（空）';

  @override
  String overflowValue(String value) => '溢出：$value';

  @override
  String mismatchRow(int row, int actual, String status) =>
      '第 $row 行 · 长度 $actual · $status';

  @override
  String shortBy(int count) => '短 $count';

  @override
  String longBy(int count) => '长 $count';

  @override
  String moreMismatches(int count) => '另有 $count 个不匹配行';

  @override
  String get recordRequired => '请输入记录文本。';

  @override
  String get widthsRequired => '请输入字段宽度。';

  @override
  String get widthsMalformed => '请使用以逗号分隔的正整数。';

  @override
  String get widthCountInvalid => '请输入 1 至 50 个字段宽度。';

  @override
  String get widthOutOfRange => '每个字段宽度必须为 1 至 1000。';

  @override
  String get widthTotalTooLarge => '字段总宽度不能超过 10000。';

  @override
  String get tooManyRows => '记录文本不能超过 1000 行。';

  @override
  String get textTooLarge => '记录文本不能超过 100000 个字符。';
}

class AppLocalizationsZhHant extends AppLocalizations {
  AppLocalizationsZhHant() : super('zh-Hant');

  @override
  String get appTitle => '定寬記錄檢查器';

  @override
  String get appDescription => '完全離線預覽欄位切片，並找出不符合定寬版面的資料列。';

  @override
  String get languageTooltip => '選擇語言';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get appearanceTooltip => '選擇外觀';

  @override
  String get appearanceMaterial => '質感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get recordTextLabel => '記錄文字';

  @override
  String get recordTextHint => '貼上或輸入定寬資料列';

  @override
  String get fieldWidthsLabel => '欄位寬度';

  @override
  String get fieldWidthsHint => '例如：3,5,4';

  @override
  String get inspectRecords => '檢查記錄';

  @override
  String get clearInput => '清除輸入';

  @override
  String get inspectionResult => '檢查結果';

  @override
  String rows(int count) => '資料列：$count';

  @override
  String expectedLength(int count) => '預期長度：$count';

  @override
  String matchingRows(int count) => '相符資料列：$count';

  @override
  String get allRowsMatch => '所有資料列皆相符';

  @override
  String get needsReview => '需要檢查';

  @override
  String get fieldPreview => '首列預覽';

  @override
  String fieldValue(int index, String value) => '欄位 $index：$value';

  @override
  String get emptyValue => '（空白）';

  @override
  String overflowValue(String value) => '溢出：$value';

  @override
  String mismatchRow(int row, int actual, String status) =>
      '第 $row 列 · 長度 $actual · $status';

  @override
  String shortBy(int count) => '短少 $count';

  @override
  String longBy(int count) => '超出 $count';

  @override
  String moreMismatches(int count) => '另有 $count 列不相符';

  @override
  String get recordRequired => '請輸入記錄文字。';

  @override
  String get widthsRequired => '請輸入欄位寬度。';

  @override
  String get widthsMalformed => '請使用以逗號分隔的正整數。';

  @override
  String get widthCountInvalid => '請輸入 1 至 50 個欄位寬度。';

  @override
  String get widthOutOfRange => '每個欄位寬度必須介於 1 到 1000。';

  @override
  String get widthTotalTooLarge => '欄位總寬度不可超過 10000。';

  @override
  String get tooManyRows => '記錄文字不可超過 1000 列。';

  @override
  String get textTooLarge => '記錄文字不可超過 100000 個字元。';
}
