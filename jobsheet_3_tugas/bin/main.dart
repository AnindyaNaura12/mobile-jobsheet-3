import 'dart:io';

void main() {
  print("Masukkan angka:");
  int angka = int.parse(stdin.readLineSync()!);
  if (angka <= 0) {
    print("Masukkan angka lebih dari 0");
  } else {
    print ("Angka yang dimasukkan: $angka");
  }
}