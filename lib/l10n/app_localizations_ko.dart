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

  @override
  String get helpTooltip => '도움말 및 안내';

  @override
  String get helpTitle => '고정폭 레코드 검사기 안내';

  @override
  String get helpProblemSolvedTitle => '해결하는 문제';

  @override
  String get helpProblemSolvedContent =>
      '금융, 공공, 레거시 시스템의 고정폭(Fixed-width) 텍스트 레코드를 정의된 필드 자릿수별로 오프라인 분해하고, 길이가 일치하지 않거나 열 경계가 밀린 행을 감지합니다.';

  @override
  String get helpHowToUseTitle => '사용 방법';

  @override
  String get helpHowToUseContent =>
      '고정폭 텍스트를 붙여넣고 각 필드의 자릿수 너비를 쉼표로 구분하여 입력(예: 10, 5, 20)한 뒤 레코드 검사 버튼을 누릅니다.';

  @override
  String get helpReadingResultsTitle => '결과 확인';

  @override
  String get helpReadingResultsContent =>
      '기대 행 길이, 총 행 수, 정상 행 수와 함께 각 필드별 슬라이스 미리보기 및 길이가 짧거나 긴 비정상 행 번호를 명확히 표시합니다.';

  @override
  String get helpExampleTitle => '대표 예시';

  @override
  String get helpExampleContent =>
      '필드 너비: \"5, 10\" (기대 길이 = 15자)\n행: \"12345ABCDEFGHIJ\" -> 필드 1: \"12345\", 필드 2: \"ABCDEFGHIJ\" (정상 15자).';

  @override
  String get helpLimitsTitle => '검증 및 제한사항';

  @override
  String get helpLimitsContent =>
      '위치 기반 자릿수 경계 검사기입니다. 각 필드 데이터의 비즈니스 유효성, 금융 결제 규격, 특수 인코딩(EBCDIC 등)의 변환을 보증하지 않습니다.';

  @override
  String get helpDataAndPrivacyTitle => '로컬 데이터 및 광고';

  @override
  String get helpDataAndPrivacyContent =>
      '입력한 레코드는 파일 시스템 접근이나 외부 전송 없이 기기 메모리에서만 파싱됩니다. 화면 하단에 Google AdMob 표준 배너 광고가 표시됩니다.';
}
