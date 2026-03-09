import 'dart:io';

void main() {
  List<String> riwayat = [];
  bool lanjut = true;

  print("=== APLIKASI KALKULATOR BMI ===");

  while (lanjut) {
    stdout.write("\nMasukkan Berat Badan (kg): ");
    double? berat = double.tryParse(stdin.readLineSync()!);

    stdout.write("Masukkan Tinggi Badan (cm): ");
    double? tinggiCm = double.tryParse(stdin.readLineSync()!);
    
    //(input-validation)
    if (berat == null || tinggiCm == null || berat <= 0 || tinggiCm <= 0) {
      print("Input tidak valid! Harap masukkan angka positif.");
      continue;
    }
    // Menampilkan Riwayat (Branch history-feature)
    print("\n=== RIWAYAT PERHITUNGAN ===");
    if (riwayat.isEmpty) {
      print("Belum ada data.");
    } else {
      for (var i = 0; i < riwayat.length; i++) {
        print("${i + 1}. ${riwayat[i]}");
      }
    }
    print("===========================");
    }
}