// Membuat class mobil
class Mobil {
  // Membuat properti
  int kapasitas;
  int muatan;

//Konstruktor untuk inisialisasi objek Mobil dengan kapasitas dan muatan awal
  Mobil(this.kapasitas, this.muatan);

// Membuat sebuah method untuk menambahkan muatan ke dalam mobil
  void tambahMuatan(int berat) {
    //membuat sebuah kondisi untuk memeriksa apakah muatan tambahan dapat ditambahkan tanpa melebihi kapasitas
    if (muatan + berat <= kapasitas) {
      // menambahkan berat tambahan ke muatan
      muatan += berat;
      print('Muatan berhasil ditambahkan. Total muatan sekarang: $muatan Kg');
    } else {
      print('Mobil sudah penuh, tidak dapat menambahkan muatan lagi.');
    }
  }

// membuat sebuah method untuk mengembalikan total muatan ke mobil
  int totalMuatan() {
    return muatan;
  }
}

//membuat class hewan
class Hewan {
  double berat;

//konstruktor untuk inisialisasi objek hewan dengan berat
  Hewan(this.berat);
}

void main() {
  // Membuat objek mobil dengan kapasitas 1000 dan muatan awal 0
  Mobil mobil = Mobil(1000, 0);

  // Menambahkan muatan ke mobil
  mobil.tambahMuatan(500);
  mobil.tambahMuatan(300);
  mobil.tambahMuatan(400);

  // Menghitung dan mencetak total muatan yang diangkut oleh mobil
  print('Total muatan mobil: ${mobil.totalMuatan()} Kg');

  // Membuat objek hewan dengan berat 25.5 kg
  Hewan sapi = Hewan(35.5);

  // Mencetak berat hewan
  print('Berat hewan: ${sapi.berat} kg');
}
