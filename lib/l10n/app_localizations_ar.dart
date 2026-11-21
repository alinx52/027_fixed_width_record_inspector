import 'app_localizations.dart';

class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr() : super('ar');

  @override
  String get appTitle => 'فاحص السجلات ثابتة العرض';

  @override
  String get appDescription =>
      'عاين مقاطع الحقول واعثر على الصفوف غير المطابقة لتخطيط ثابت العرض دون اتصال.';

  @override
  String get languageTooltip => 'اختيار اللغة';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get appearanceTooltip => 'اختيار المظهر';

  @override
  String get appearanceMaterial => 'مادي';

  @override
  String get appearanceFlat => 'مسطح';

  @override
  String get appearanceSoft => 'ناعم';

  @override
  String get recordTextLabel => 'نص السجلات';

  @override
  String get recordTextHint => 'الصق صفوفًا ثابتة العرض أو اكتبها';

  @override
  String get fieldWidthsLabel => 'عروض الحقول';

  @override
  String get fieldWidthsHint => 'مثال: 3,5,4';

  @override
  String get inspectRecords => 'فحص السجلات';

  @override
  String get clearInput => 'مسح الإدخال';

  @override
  String get inspectionResult => 'نتيجة الفحص';

  @override
  String rows(int count) => 'الصفوف: $count';

  @override
  String expectedLength(int count) => 'الطول المتوقع: $count';

  @override
  String matchingRows(int count) => 'الصفوف المطابقة: $count';

  @override
  String get allRowsMatch => 'كل الصفوف متطابقة';

  @override
  String get needsReview => 'بحاجة إلى مراجعة';

  @override
  String get fieldPreview => 'معاينة الصف الأول';

  @override
  String fieldValue(int index, String value) => 'الحقل $index: $value';

  @override
  String get emptyValue => '(فارغ)';

  @override
  String overflowValue(String value) => 'المحتوى الزائد: $value';

  @override
  String mismatchRow(int row, int actual, String status) =>
      'الصف $row · الطول $actual · $status';

  @override
  String shortBy(int count) => 'أقصر بمقدار $count';

  @override
  String longBy(int count) => 'أطول بمقدار $count';

  @override
  String moreMismatches(int count) => '$count صفوف أخرى غير متطابقة';

  @override
  String get recordRequired => 'أدخل نص السجلات.';

  @override
  String get widthsRequired => 'أدخل عروض الحقول.';

  @override
  String get widthsMalformed => 'استخدم أعدادًا صحيحة موجبة مفصولة بفواصل.';

  @override
  String get widthCountInvalid => 'أدخل من 1 إلى 50 عرضًا للحقول.';

  @override
  String get widthOutOfRange => 'يجب أن يكون عرض كل حقل بين 1 و1000.';

  @override
  String get widthTotalTooLarge => 'لا يمكن أن يتجاوز مجموع العروض 10000.';

  @override
  String get tooManyRows => 'لا يمكن أن يتجاوز النص 1000 صف.';

  @override
  String get textTooLarge => 'لا يمكن أن يتجاوز النص 100000 حرف.';
}
