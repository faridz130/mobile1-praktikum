class OlahData {
  Future<List<int>> prosesList(List<int> dataList, int pengkali) async {
    List<int> result = []; // Membuat list kosong untuk menyimpan hasil

    for (int element in dataList) {
      // Melakukan perulangan melalui setiap elemen dalam list data
      await Future.delayed(Duration(milliseconds: 1000));
      // Simulasi penundaan asinkron (misalnya IO atau jaringan)
      // Melakukan perkalian
      int multiplied = element * pengkali;
      // Menambahkan hasil perkalian ke dalam list result
      result.add(multiplied);
    }
    return result; // Mengembalikan list result yang berisi hasil proses
  }
}

void main() async {
  List<int> dataList = [1, 2, 3, 4, 5]; // Contoh list data
  int pengkali = 2; // Contoh pengali

  print('Data yang ada di List: $dataList');
  print('Data Pengali: $pengkali');
// Membuat instance dari class olah data
  OlahData memproses = OlahData();
  // Memanggil metode processList
  List<int> hasilKali = await memproses.prosesList(dataList, pengkali);

  print('Hasil perkalian: $hasilKali'); // Mencetak hasil perkalian
}
