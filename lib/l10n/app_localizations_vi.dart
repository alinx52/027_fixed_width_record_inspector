// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Trình kiểm tra bản ghi độ rộng cố định';

  @override
  String get appDescription =>
      'Xem trước các trường và tìm hàng không khớp bố cục độ rộng cố định, hoàn toàn ngoại tuyến.';

  @override
  String get languageTooltip => 'Chọn ngôn ngữ';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get appearanceTooltip => 'Chọn giao diện';

  @override
  String get appearanceMaterial => 'Vật liệu';

  @override
  String get appearanceFlat => 'Phẳng';

  @override
  String get appearanceSoft => 'Mềm';

  @override
  String get recordTextLabel => 'Văn bản bản ghi';

  @override
  String get recordTextHint => 'Dán hoặc nhập các hàng có độ rộng cố định';

  @override
  String get fieldWidthsLabel => 'Độ rộng trường';

  @override
  String get fieldWidthsHint => 'Ví dụ: 3,5,4';

  @override
  String get inspectRecords => 'Kiểm tra bản ghi';

  @override
  String get clearInput => 'Xóa dữ liệu nhập';

  @override
  String get inspectionResult => 'Kết quả kiểm tra';

  @override
  String rows(int count) {
    return 'Số hàng: $count';
  }

  @override
  String expectedLength(int count) {
    return 'Độ dài dự kiến: $count';
  }

  @override
  String matchingRows(int count) {
    return 'Số hàng khớp: $count';
  }

  @override
  String get allRowsMatch => 'Tất cả các hàng đều khớp';

  @override
  String get needsReview => 'Cần xem lại';

  @override
  String get fieldPreview => 'Xem trước hàng đầu tiên';

  @override
  String fieldValue(int index, String value) {
    return 'Trường $index: $value';
  }

  @override
  String get emptyValue => '(trống)';

  @override
  String overflowValue(String value) {
    return 'Phần dư: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'Hàng $row · độ dài $actual · $status';
  }

  @override
  String shortBy(int count) {
    return 'Thiếu $count';
  }

  @override
  String longBy(int count) {
    return 'Thừa $count';
  }

  @override
  String moreMismatches(int count) {
    return 'Còn $count hàng không khớp';
  }

  @override
  String get recordRequired => 'Hãy nhập văn bản bản ghi.';

  @override
  String get widthsRequired => 'Hãy nhập độ rộng trường.';

  @override
  String get widthsMalformed =>
      'Dùng các số nguyên dương phân cách bằng dấu phẩy.';

  @override
  String get widthCountInvalid => 'Nhập từ 1 đến 50 độ rộng trường.';

  @override
  String get widthOutOfRange => 'Mỗi độ rộng trường phải từ 1 đến 1000.';

  @override
  String get widthTotalTooLarge =>
      'Tổng độ rộng trường không được vượt quá 10000.';

  @override
  String get tooManyRows => 'Văn bản bản ghi không được vượt quá 1000 hàng.';

  @override
  String get textTooLarge =>
      'Văn bản bản ghi không được vượt quá 100000 ký tự.';
}
