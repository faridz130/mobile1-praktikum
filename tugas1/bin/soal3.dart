// tipe data bigInt digunakan untuk mengatasi bilangan bulat yang
// tidak dapat di representasikan oleh tipe data int
BigInt faktorial(int n) {
  //BigInt.one adalah sebuahb konstanta yang mewakili angka 1
  // dalam tipe data bigInt
  BigInt hasil = BigInt.one;

  //membuat sebuah perulangan untuk menghitung sebuah faktorial dari suatu nilai
  for (int i = 1; i <= n; i++) {
    // BigInt.from digunakan untuk mengkonversi sebuah nilai biasa(int)
    // menjadi sebuah tipe data big int
    hasil *= BigInt.from(i);
  }

  //mengembalikan nilai dari hasil
  return hasil;
}

void main() {
  //membuat 3 variabel dengan tipe data int, dan tidak perlu menggunakan bigInt

  int nilai1 = 10;
  int nilai2 = 20;
  int nilai3 = 30;

  //mencetak tulisan dan hasil perhitungan ke layar
  print('Hasil faktorial dari $nilai1 adalah ${faktorial(nilai1)}');
  print('Hasil faktorial dari $nilai2 adalah ${faktorial(nilai2)}');
  print('Hasil faktorial dari $nilai3 adalah ${faktorial(nilai3)}');
}
