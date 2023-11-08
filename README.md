## Tugas 7 PBP ##
1. Jawab:

    Perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi flutter terletak pada bagaimana mereka mengelola dan merespons perubahan data atau keadaan aplikasi. Stateless widget tidak memiliki keadaan internal yang berubah, sedangkan stateful memiliki keadaan internal yang dapat berubah selama widget hidup. Stateless widget hanya memiliki properti final yang didefinisikan saat pembuatan dan hanya hal tersebut yang dibutuhkan saat membuat device screen. Stateless widget digunakan untuk menampilkan tampilan yang statis/tetap yang tidak bergantung pada perubahan data, sedangkan stateful widget digunakan untuk memperbarui tampilan atau merespons perubahan data/input pengguna. Contoh dari stateless widget adalah teks statis, ikon, gambar, dan elemen lain yang tidak perlu mengubah keadaan. Sementara itu, salah satu contoh dari stateful widget adalah formulir yang menggunakan input pengguna.

2.  Jawab :

    - MyHomePage (Stateless Widget): Widget utama yang mewakili halaman beranda aplikasi. Digunakan untuk mengatur tampilan utama aplikasi, termasuk AppBar dan daftar item.

    - Scaffold: Scaffold adalah widget yang digunakan untuk menyusun elemen-elemen tampilan dasar aplikasi seperti AppBar, Drawer, dan lainnya. Dalam tugas ini, Scaffold digunakan untuk mengatur AppBar di bagian atas halaman.

    - AppBar: AppBar adalah widget yang digunakan untuk menampilkan bilah aplikasi di bagian atas layar. Dalam tugas ini, AppBar digunakan untuk menampilkan judul aplikasi "Nadterial Store" di dalam AppBar.

    - Text: Text adalah widget yang digunakan untuk menampilkan teks. Dalam tugas ini, Text digunakan untuk menampilkan judul toko "PBP Inventory" dengan gaya tertentu di tengah halaman.

    - SingleChildScrollView: SingleChildScrollView adalah widget yang memungkinkan kontennya dapat digulir secara vertikal. Ini digunakan untuk mengelilingi konten halaman dan membuatnya dapat digulir jika ukurannya melebihi layar.

    - Padding: Padding adalah widget yang digunakan untuk menambahkan ruang kosong (padding) di sekitar elemen-elemen anaknya. Dalam tugas ini, Padding digunakan untuk memberikan jarak dari tepi halaman.

    - Column: Column adalah widget yang digunakan untuk menampilkan elemen-elemen anak secara vertikal. Ini digunakan untuk mengelompokkan elemen-elemen seperti judul dan grid.

    - GridView.count: GridView.count adalah widget yang digunakan untuk menampilkan elemen dalam bentuk grid dengan jumlah kolom yang ditentukan. Dalam tugas ini, GridView.count digunakan untuk menampilkan kotak-kotak (card) yang merepresentasikan item toko.

    - InkWell: InkWell adalah widget yang memberikan area responsif terhadap sentuhan (tap). Ini digunakan untuk menangani ketika pengguna mengetuk salah satu item dalam grid.

    - Material: Material adalah widget yang digunakan untuk memberikan efek material design, termasuk latar belakang dengan warna yang ditentukan. Dalam tugas ini, Material digunakan sebagai latar belakang untuk setiap card.

    - Icon: Icon adalah widget yang digunakan untuk menampilkan ikon. Dalam tugas ini, Icon digunakan untuk menampilkan ikon yang sesuai dengan setiap item.

    - SnackBar: SnackBar adalah pesan pop-up sementara yang ditampilkan ketika pengguna mengetuk salah satu item. Dalam tugas ini, SnackBar digunakan untuk memberi tahu pengguna bahwa mereka telah menekan tombol tertentu.

    - Text (di dalam ShopCard): Text digunakan untuk menampilkan teks yang mewakili nama item di dalam setiap card.

3. Jawab :

    checklist (ck):

    ck1 : Pertama-tama saya membuat direktori lokal baru dan membuka commend promptnya. Selanjutnya, saya melakukan generate proyek flutter baru dengan nama nadterial_store dan masuk ke dalam direktori proyek tersebut. Setelah masuk, saya menjalankan proyek flutter dengan perintah flutter run dan memilih chrome untuk menampilkan proyek flutter. Kemudian, saya membuat repository baru pada github dengan nama nadterial-store-mobile dan menghubungkannya dengan direktori lokal saya menggunakan perintah git init, git add, git commit, git add remote, dan git push. Setelahnya, saya membuka folder lib yang berada di dalam direktori proyek flutter pada vscode untuk merapikan struktur proyek dan membuat widget sederhana pada flutter. Saya membuat berkas file baru bernama menu.dart dan melakukan import package. Kemudian, saya memindahkan potongan kode yang berada di bawah class MyHomePage di berkas file main.dart ke dalam file menu.dart serta menambahkan import package proyek nadterial_store pada berkas main.dart. Untuk membuat widget, saya menambahkan Material color pada berkas main.dart sebagai tema aplikasi.

    ck2 & ck3 : Sebelum membuat widget tombol sederhana dengan ikon di dalamnya, saya mengubah widget halaman menu menjadi stateless. Pertama-tama buka berkas file main.dart dan hapus isi/parameter MyHomePage. Kemudian, saya mengubah kode bagian key, menghapus final String title, menambahkan potongan kode widget build, dan menghapus fungsi state yang berada di bawah bagian stateless widget tersebut pada berkas file menu.dart. Untuk menambahkan ikon, saya membuat class yang berisi properti final seperti String name dan IconData icon. Selanjutnya, saya menambahkan potongan kode yang berisi nama serta ikon tiap tombol di bawah kode MyHomePage. Terakhir, saya menambahkan potongan kode baru berisi return Scaffold dan membuat widget stateless baru untuk menampilkan card. Dalam kode tersebut saya telah menambahkan kode untuk memunculkan Snackbar dari masing-masing tombol, yakni tombol Lihat Item ("Kamu telah menekan tombol Lihat Item"), tombol Tambah Item ("Kamu telah menekan tombol Tambah Item"), dan tombol Logout ("Kamu telah menekan tombol Logout").

    ck4 : Saya membuka berkas README.md yang ada di root direktori pada vscode dan mengisinya dengan jawaban dari soal-soal pada tugas 7 pbp.

    ck5 : Saya membuka cmd proyek flutter saya dan menjalankan perintah git add-commit-push.

    ck6 (BONUS) : Pertama-tama saya menambahkan properti final warna pada class ShopItem di berkas file menu.dart. Kemudian, saya menambahkan kode in-line warna dari setiap tombol pada final List. Terakhir saya mengubah kode color : Colors.indigo pada Material menjadi color : item.color.