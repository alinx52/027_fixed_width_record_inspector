import 'app_localizations.dart';

class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId() : super('id');

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
  String rows(int count) => 'Baris: $count';

  @override
  String expectedLength(int count) => 'Panjang yang diharapkan: $count';

  @override
  String matchingRows(int count) => 'Baris yang cocok: $count';

  @override
  String get allRowsMatch => 'Semua baris cocok';

  @override
  String get needsReview => 'Perlu ditinjau';

  @override
  String get fieldPreview => 'Pratinjau baris pertama';

  @override
  String fieldValue(int index, String value) => 'Bidang $index: $value';

  @override
  String get emptyValue => '(kosong)';

  @override
  String overflowValue(String value) => 'Kelebihan: $value';

  @override
  String mismatchRow(int row, int actual, String status) =>
      'Baris $row · panjang $actual · $status';

  @override
  String shortBy(int count) => 'Kurang $count';

  @override
  String longBy(int count) => 'Lebih $count';

  @override
  String moreMismatches(int count) => '$count baris tidak cocok lainnya';

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
}
