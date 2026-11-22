// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'निश्चित चौड़ाई रिकॉर्ड निरीक्षक';

  @override
  String get appDescription =>
      'पूरी तरह ऑफ़लाइन फ़ील्ड खंडों का पूर्वावलोकन करें और निश्चित-चौड़ाई लेआउट से अलग पंक्तियाँ खोजें।';

  @override
  String get languageTooltip => 'भाषा चुनें';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get appearanceTooltip => 'रूप चुनें';

  @override
  String get appearanceMaterial => 'मटेरियल';

  @override
  String get appearanceFlat => 'समतल';

  @override
  String get appearanceSoft => 'कोमल';

  @override
  String get recordTextLabel => 'रिकॉर्ड टेक्स्ट';

  @override
  String get recordTextHint => 'निश्चित-चौड़ाई पंक्तियाँ चिपकाएँ या लिखें';

  @override
  String get fieldWidthsLabel => 'फ़ील्ड की चौड़ाइयाँ';

  @override
  String get fieldWidthsHint => 'उदाहरण: 3,5,4';

  @override
  String get inspectRecords => 'रिकॉर्ड जाँचें';

  @override
  String get clearInput => 'इनपुट साफ़ करें';

  @override
  String get inspectionResult => 'जाँच परिणाम';

  @override
  String rows(int count) {
    return 'पंक्तियाँ: $count';
  }

  @override
  String expectedLength(int count) {
    return 'अपेक्षित लंबाई: $count';
  }

  @override
  String matchingRows(int count) {
    return 'मिलती पंक्तियाँ: $count';
  }

  @override
  String get allRowsMatch => 'सभी पंक्तियाँ मेल खाती हैं';

  @override
  String get needsReview => 'समीक्षा आवश्यक';

  @override
  String get fieldPreview => 'पहली पंक्ति का पूर्वावलोकन';

  @override
  String fieldValue(int index, String value) {
    return 'फ़ील्ड $index: $value';
  }

  @override
  String get emptyValue => '(खाली)';

  @override
  String overflowValue(String value) {
    return 'अतिरिक्त: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'पंक्ति $row · लंबाई $actual · $status';
  }

  @override
  String shortBy(int count) {
    return '$count कम';
  }

  @override
  String longBy(int count) {
    return '$count अधिक';
  }

  @override
  String moreMismatches(int count) {
    return '$count और बेमेल पंक्तियाँ';
  }

  @override
  String get recordRequired => 'रिकॉर्ड टेक्स्ट दर्ज करें।';

  @override
  String get widthsRequired => 'फ़ील्ड की चौड़ाइयाँ दर्ज करें।';

  @override
  String get widthsMalformed =>
      'कॉमा से अलग किए गए धनात्मक पूर्णांक उपयोग करें।';

  @override
  String get widthCountInvalid => '1 से 50 फ़ील्ड चौड़ाइयाँ दर्ज करें।';

  @override
  String get widthOutOfRange => 'हर फ़ील्ड चौड़ाई 1 से 1000 के बीच होनी चाहिए।';

  @override
  String get widthTotalTooLarge =>
      'कुल फ़ील्ड चौड़ाई 10000 से अधिक नहीं हो सकती।';

  @override
  String get tooManyRows =>
      'रिकॉर्ड टेक्स्ट 1000 पंक्तियों से अधिक नहीं हो सकता।';

  @override
  String get textTooLarge =>
      'रिकॉर्ड टेक्स्ट 100000 वर्णों से अधिक नहीं हो सकता।';

  @override
  String get helpTooltip => 'सहायता और मार्गदर्शिका';

  @override
  String get helpTitle => 'निश्चित चौड़ाई रिकॉर्ड निरीक्षक मार्गदर्शिका';

  @override
  String get helpProblemSolvedTitle => 'समस्या का समाधान';

  @override
  String get helpProblemSolvedContent =>
      'कॉलम चौड़ाई के आधार पर निश्चित चौड़ाई के टेक्स्ट रिकॉर्ड (बैंकिंग, EDI) का निरीक्षण करता है, लंबाई विसंगतियों का पता लगाता है।';

  @override
  String get helpHowToUseTitle => 'उपयोग कैसे करें';

  @override
  String get helpHowToUseContent =>
      'निश्चित चौड़ाई के रिकॉर्ड चिपकाएं, अल्पविराम से अलग की गई फ़ील्ड चौड़ाई (उदा. 10, 5, 20) दर्ज करें और निरीक्षण करें दबाएं।';

  @override
  String get helpReadingResultsTitle => 'परिणाम कैसे समझें';

  @override
  String get helpReadingResultsContent =>
      'अपेक्षित पंक्ति लंबाई, कुल पंक्तियाँ, अनुरूप पंक्तियाँ, फ़ील्ड-दर-फ़ील्ड पूर्वावलोकन दिखाता है और त्रुटिपूर्ण पंक्तियों को चिह्नित करता है।';

  @override
  String get helpExampleTitle => 'उदाहरण';

  @override
  String get helpExampleContent =>
      'चौड़ाई: \"5, 10\" (अपेक्षित लंबाई = 15)\nपंक्ति: \"12345ABCDEFGHIJ\" -> फ़ील्ड 1: \"12345\", फ़ील्ड 2: \"ABCDEFGHIJ\" (मान्य 15 वर्ण)।';

  @override
  String get helpLimitsTitle => 'सत्यापन और सीमाएं';

  @override
  String get helpLimitsContent =>
      'केवल स्थितीय कॉलम सीमा निरीक्षक है। व्यावसायिक तर्क, बैंक समाशोधन प्रारूप या EBCDIC एन्कोडिंग को मान्य नहीं करता है।';

  @override
  String get helpDataAndPrivacyTitle => 'स्थानीय डेटा और विज्ञापन';

  @override
  String get helpDataAndPrivacyContent =>
      'सभी रिकॉर्ड टेक्स्ट बिना फ़ाइल एक्सेस या अपलोड के डिवाइस पर मेमोरी में पार्स किए जाते हैं। नीचे AdMob बैनर दिखाया गया है।';
}
