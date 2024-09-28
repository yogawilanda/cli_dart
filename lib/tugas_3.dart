import 'dart:math';

// Tugas 3.2
void cariBilanganDalamList(int bilangan) {

  print("\nTUGAS 3.2 : Cari Bilangan di dalam List\n");
  // Membuat List 2 dimensi dengan isi sesuai ketentuan
  List<List<int>> list2D = [
    [5, 10, 15],
    [2, 4, 6, 8],
    [1, 4, 9, 16, 25],
    [3, 4, 5, 6, 7, 8]
  ];

  // Menampilkan isi List
  print('Isi List:');
  for (var baris in list2D) {
    print(baris);
  }

  // Mencari bilangan dalam List
  bool ditemukan = false;
  for (int i = 0; i < list2D.length; i++) {
    for (int j = 0; j < list2D[i].length; j++) {
      if (list2D[i][j] == bilangan) {
        print('$bilangan berada di:');
        print('baris ${i + 1} kolom ${j + 1}');
        ditemukan = true;
      }
    }
  }

  if (!ditemukan) {
    print('$bilangan tidak ditemukan');
  }
}

void createAndTransposeMatrix(int A, int B) {
  print("TUGAS 3.1 : Membuat dan Transpose Matriks\n");
  // Membuat list 2 dimensi untuk mewakili matriks
  List<List<int>> matrix = List.generate(A, (i) => List.generate(B, (j) => Random().nextInt(10)));

  // Mencetak matriks asli
  print('Matriks AxB');
  print('A: $A');
  print('B: $B');
  print('Isi matriks:');
  for (var row in matrix) {
    print(row);
  }

  // Membuat matriks transpose
  List<List<int>> transpose = List.generate(B, (i) => List.generate(A, (j) => matrix[j][i]));

  // Mencetak matriks transpose
  print('Hasil transpose:');
  for (var row in transpose) {
    print(row);
  }
}


/// Fungsi untuk mencari Kelipatan Persekutuan Terkecil (KPK) dari dua bilangan
/// Fungsi untuk mencari Kelipatan Persekutuan Terkecil (KPK) dari dua bilangan
int cariKPK(int bilangan1, int bilangan2) {
  // Menentukan bilangan terbesar di antara kedua bilangan
  int bilanganTerbesar = bilangan1 > bilangan2 ? bilangan1 : bilangan2;

  print("\nTUGAS 3.3 : KPK\n");

  // Mencari KPK dengan memulai dari bilangan terbesar
  while (true) {
    if (bilanganTerbesar % bilangan1 == 0 && bilanganTerbesar % bilangan2 == 0) {
      print('KPK dari $bilangan1 dan $bilangan2 adalah $bilanganTerbesar');
      return bilanganTerbesar; // Keluarkan nilai KPK dan hentikan loop
    }
    bilanganTerbesar++; // Tingkatkan bilangan terbesar hingga KPK ditemukan
  }
}

