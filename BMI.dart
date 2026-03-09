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
    }// Kalkulasi BMI (Branch bmi-calculation)
    double tinggiM = tinggiCm / 100;
    double bmi = berat / (tinggiM * tinggiM);

    // Kategorisasi (Branch bmi-calculation)
    String kategori;
    if (bmi < 18.5) {
      kategori = "Kurus";
    } else if (bmi < 25) {
      kategori = "Normal";
    } else if (bmi < 30) {
      kategori = "Gemuk";
    } else {
      kategori = "Obesitas";
    }

    String hasil = "Berat: ${berat}kg, Tinggi: ${tinggiCm}cm | BMI: ${bmi.toStringAsFixed(1)} ($kategori)";
    riwayat.add(hasil);

    print("\nHasil: $hasil");

    stdout.write("\nHitung lagi? (y/n): ");
    String? pilihan = stdin.readLineSync()?.toLowerCase();
    if (pilihan != 'y') lanjut = false;
  }
}