// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '고정 폭 레코드 검사기';

  @override
  String get appDescription => '오프라인에서 필드 구간을 미리 보고 고정 폭 레이아웃과 맞지 않는 행을 찾으세요.';

  @override
  String get languageTooltip => '언어 선택';

  @override
  String get privacyPolicy => '개인정보처리방침';

  @override
  String get appearanceTooltip => '화면 스타일 선택';

  @override
  String get appearanceMaterial => '머티리얼';

  @override
  String get appearanceFlat => '플랫';

  @override
  String get appearanceSoft => '소프트';

  @override
  String get recordTextLabel => '레코드 텍스트';

  @override
  String get recordTextHint => '고정 폭 행을 붙여넣거나 입력하세요';

  @override
  String get fieldWidthsLabel => '필드 너비';

  @override
  String get fieldWidthsHint => '예: 3,5,4';

  @override
  String get inspectRecords => '레코드 검사';

  @override
  String get clearInput => '입력 지우기';

  @override
  String get inspectionResult => '검사 결과';

  @override
  String rows(int count) {
    return '행: $count';
  }

  @override
  String expectedLength(int count) {
    return '예상 길이: $count';
  }

  @override
  String matchingRows(int count) {
    return '일치하는 행: $count';
  }

  @override
  String get allRowsMatch => '모든 행이 일치합니다';

  @override
  String get needsReview => '검토 필요';

  @override
  String get fieldPreview => '첫 번째 행 미리보기';

  @override
  String fieldValue(int index, String value) {
    return '필드 $index: $value';
  }

  @override
  String get emptyValue => '(비어 있음)';

  @override
  String overflowValue(String value) {
    return '초과 내용: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return '$row행 · 길이 $actual · $status';
  }

  @override
  String shortBy(int count) {
    return '$count자 부족';
  }

  @override
  String longBy(int count) {
    return '$count자 초과';
  }

  @override
  String moreMismatches(int count) {
    return '불일치 행 $count개 더 있음';
  }

  @override
  String get recordRequired => '레코드 텍스트를 입력하세요.';

  @override
  String get widthsRequired => '필드 너비를 입력하세요.';

  @override
  String get widthsMalformed => '쉼표로 구분한 양의 정수를 사용하세요.';

  @override
  String get widthCountInvalid => '필드 너비를 1개에서 50개까지 입력하세요.';

  @override
  String get widthOutOfRange => '각 필드 너비는 1에서 1000 사이여야 합니다.';

  @override
  String get widthTotalTooLarge => '전체 필드 너비는 10000을 초과할 수 없습니다.';

  @override
  String get tooManyRows => '레코드 텍스트는 1000행을 초과할 수 없습니다.';

  @override
  String get textTooLarge => '레코드 텍스트는 100000자를 초과할 수 없습니다.';
}
