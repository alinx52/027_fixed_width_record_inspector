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

  @override
  String get helpTooltip => 'Trợ giúp & Hướng dẫn';

  @override
  String get helpTitle => 'Hướng dẫn kiểm tra bản ghi độ rộng cố định';

  @override
  String get helpProblemSolvedTitle => 'Vấn đề giải quyết';

  @override
  String get helpProblemSolvedContent =>
      'Kiểm tra các bản ghi văn bản có độ rộng cố định (ngân hàng, EDI) theo độ rộng cột, phát hiện sự chênh lệch độ dài và lệch cột.';

  @override
  String get helpHowToUseTitle => 'Cách sử dụng';

  @override
  String get helpHowToUseContent =>
      'Dán các bản ghi độ rộng cố định, nhập độ rộng trường cách nhau bằng dấu phẩy (ví dụ 10, 5, 20) và nhấn Kiểm tra bản ghi.';

  @override
  String get helpReadingResultsTitle => 'Đọc kết quả';

  @override
  String get helpReadingResultsContent =>
      'Hiển thị độ dài dòng dự kiến, tổng số dòng, các dòng hợp lệ, xem trước từng trường và gắn cờ các dòng quá ngắn hoặc quá dài.';

  @override
  String get helpExampleTitle => 'Ví dụ';

  @override
  String get helpExampleContent =>
      'Độ rộng: \"5, 10\" (Độ dài dự kiến = 15)\nDòng: \"12345ABCDEFGHIJ\" -> Trường 1: \"12345\", Trường 2: \"ABCDEFGHIJ\" (Hợp lệ 15 ký tự).';

  @override
  String get helpLimitsTitle => 'Xác thực & Giới hạn';

  @override
  String get helpLimitsContent =>
      'Chỉ là công cụ kiểm tra ranh giới cột theo vị trí. Không xác thực quy tắc nghiệp vụ, định dạng ngân hàng hoặc mã hóa EBCDIC.';

  @override
  String get helpDataAndPrivacyTitle => 'Dữ liệu cục bộ & Quảng cáo';

  @override
  String get helpDataAndPrivacyContent =>
      'Tất cả văn bản bản ghi được phân tích trong bộ nhớ mà không cần truy cập tệp hoặc tải lên. Biểu ngữ AdMob hiển thị ở dưới.';
}
