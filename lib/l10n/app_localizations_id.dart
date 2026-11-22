// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Pemeriksa Rekaman Lebar Tetap';

  @override
  String get appDescription =>
      'Pratinjau potongan bidang dan temukan baris yang tidak sesuai tata letak lebar tetap secara luring.';

  @override
  String get languageTooltip => 'Pilih bahasa';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get appearanceTooltip => 'Pilih tampilan';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Datar';

  @override
  String get appearanceSoft => 'Lembut';

  @override
  String get recordTextLabel => 'Teks rekaman';

  @override
  String get recordTextHint => 'Tempel atau ketik baris lebar tetap';

  @override
  String get fieldWidthsLabel => 'Lebar bidang';

  @override
  String get fieldWidthsHint => 'Contoh: 3,5,4';

  @override
  String get inspectRecords => 'Periksa rekaman';

  @override
  String get clearInput => 'Hapus masukan';

  @override
  String get inspectionResult => 'Hasil pemeriksaan';

  @override
  String rows(int count) {
    return 'Baris: $count';
  }

  @override
  String expectedLength(int count) {
    return 'Panjang yang diharapkan: $count';
  }

  @override
  String matchingRows(int count) {
    return 'Baris yang cocok: $count';
  }

  @override
  String get allRowsMatch => 'Semua baris cocok';

  @override
  String get needsReview => 'Perlu ditinjau';

  @override
  String get fieldPreview => 'Pratinjau baris pertama';

  @override
  String fieldValue(int index, String value) {
    return 'Bidang $index: $value';
  }

  @override
  String get emptyValue => '(kosong)';

  @override
  String overflowValue(String value) {
    return 'Kelebihan: $value';
  }

  @override
  String mismatchRow(int row, int actual, String status) {
    return 'Baris $row · panjang $actual · $status';
  }

  @override
  String shortBy(int count) {
    return 'Kurang $count';
  }

  @override
  String longBy(int count) {
    return 'Lebih $count';
  }

  @override
  String moreMismatches(int count) {
    return '$count baris tidak cocok lainnya';
  }

  @override
  String get recordRequired => 'Masukkan teks rekaman.';

  @override
  String get widthsRequired => 'Masukkan lebar bidang.';

  @override
  String get widthsMalformed =>
      'Gunakan bilangan bulat positif yang dipisahkan koma.';

  @override
  String get widthCountInvalid => 'Masukkan 1 sampai 50 lebar bidang.';

  @override
  String get widthOutOfRange => 'Setiap lebar bidang harus antara 1 dan 1000.';

  @override
  String get widthTotalTooLarge =>
      'Total lebar bidang tidak boleh melebihi 10000.';

  @override
  String get tooManyRows => 'Teks rekaman tidak boleh melebihi 1000 baris.';

  @override
  String get textTooLarge =>
      'Teks rekaman tidak boleh melebihi 100000 karakter.';

  @override
  String get helpTooltip => 'Bantuan & Panduan';

  @override
  String get helpTitle => 'Panduan Pemeriksa Rekam Lebar Tetap';

  @override
  String get helpProblemSolvedTitle => 'Masalah yang Diatasi';

  @override
  String get helpProblemSolvedContent =>
      'Memeriksa rekaman teks posisi lebar tetap (perbankan, EDI) berdasarkan lebar kolom, mendeteksi ketidaksesuaian panjang baris.';

  @override
  String get helpHowToUseTitle => 'Cara Penggunaan';

  @override
  String get helpHowToUseContent =>
      'Tempel rekaman lebar tetap, masukkan lebar bidang dipisahkan koma (mis. 10, 5, 20), lalu ketuk Periksa rekaman.';

  @override
  String get helpReadingResultsTitle => 'Membaca Hasil';

  @override
  String get helpReadingResultsContent =>
      'Menampilkan panjang baris yang diharapkan, total baris, baris yang sesuai, pratinjau per bidang, dan menandai baris yang bermasalah.';

  @override
  String get helpExampleTitle => 'Contoh';

  @override
  String get helpExampleContent =>
      'Lebar: \"5, 10\" (Panjang yang diharapkan = 15)\nBaris: \"12345ABCDEFGHIJ\" -> Bidang 1: \"12345\", Bidang 2: \"ABCDEFGHIJ\" (Valid 15 karakter).';

  @override
  String get helpLimitsTitle => 'Validasi & Batasan';

  @override
  String get helpLimitsContent =>
      'Hanya alat pemeriksa batas kolom posisional. Tidak memvalidasi logika bisnis, format kliring bank, atau pengkodean EBCDIC.';

  @override
  String get helpDataAndPrivacyTitle => 'Data Lokal & Iklan';

  @override
  String get helpDataAndPrivacyContent =>
      'Semua teks rekam diurai di memori tanpa akses file atau unggahan eksternal. Spanduk AdMob ditampilkan di bawah.';
}
