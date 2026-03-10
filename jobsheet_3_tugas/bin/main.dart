import 'dart:io';

void main() {
  print("===== MENU MATEMATIKA SEDERHANA =====");
  print("1. Cek Bilangan Prima");
  print("2. Hitung Faktorial");

  print("Pilih Menu:");
  int pilihan = int.parse(stdin.readLineSync()!);

  print("Masukkan angka:");
  int angka = int.parse(stdin.readLineSync()!);

  if (angka <= 0) {
    print("Masukkan angka lebih dari 0");
    return; 
  }

  print("Angka yang dimasukkan: $angka");

  if (pilihan == 1) {
    bool hasil = cekPrima(angka);

    if (hasil) {
      print("$angka adalah bilangan prima");
    }else {
      print("$angka bukan bilangan prima");
    }
  } 
  else if (pilihan == 2) {
    print("Hitung faktorial");
  } else {
    print("Menu tidak tersedia");
  }
}

bool cekPrima(int angka) {
  if (angka < 2) return false;
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) return false;
  }
  return true;
}

int hitungFaktorial(int angka) {
  int hasil = 1;

  for (int i = 1; i <= angka; i++) {
    hasil *= i;
  }

  return hasil;
}