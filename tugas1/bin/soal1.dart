import 'dart:io';

double hitungRuas(double radius) {
  // inisialilasi nilai phi yaitu 3.14
  double pi = 3.14;

  //membuat rumus menghitung ruas dari sebuah lingkaran
  double ruas = 2 * pi * radius;

  //mengembalikan nilai ruas untuk menyimpannya dalam sebuah variabel
  return ruas;
}

void main() {
  //mencetak tulisan ke layar
  stdout.write('Masukan radius lingkaran: ');

  // membuat variabel radius untuk menampung dari inputan user
  // lalu membaca inputan dari user dan akan mengkonversi nilai menjadi double,
  // tanda (!) memberitahu kompiler bahwa tidak akan ada nilai null dalam proses input
  double radius = double.parse(stdin.readLineSync()!);

  //menghitung ruas lingkaran setelah menerima input dari radius
  double ruas = hitungRuas(radius);

  //mencetak tulisan dan hasil perhitungan  ke layar
  print('Ruas dari lingkaran adalah = $ruas');
}
