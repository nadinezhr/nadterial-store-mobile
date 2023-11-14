## Tugas 8 PBP ##
1.  Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

    Jawab:

    - Navigator.push() : digunakan untuk menambahkan halaman baru ke dalam tumpukan halaman saat ini. Halaman baru akan berada di atas halaman saat ini diakses(ditumpuk). Contoh penggunaanya adalah saat pengguna berada di HomePage, kemudian ingin menambahkan item dengan menuju halaman tambah item, maka Navigator.push() akan menambahkan halaman 'tambahItem' ke tumpukan navigasi. Navigator.push() akan mempertahankan tumpukan halaman navigasi.

    - Navigator.pushReplacement(): digunakan untuk menggantikan halaman saat ini dengan halaman baru. Halaman saat ini akan dihapus dari tumpukan navigasi dan diganti dengan halaman baru. Contoh penggunaanya adalah saat pengguna saat ini berada di halaman 'tambahItem' dan ingin kembali ke HomePage, maka Navigator.pushReplacement() akan mengganti halaman 'tambahItem' dengan HomePage tanpa menambahkan HomePage ke tumpukan navigasi. Navigator.pushReplacement() akan mengganti halaman saat ini sepenuhnya dengan halaman baru.

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

    Jawab:

    - Container: Sebuah widget serbaguna yang dapat mengatur tata letak dan dekorasi dari elemen-elemen anak di dalamnya. Container digunakan untuk menempatkan widget lain dan mengontrol properti-properti seperti margin, padding, warna, dan bentuk.

    - Row: Digunakan untuk menyusun widget secara horizontal, sejajar satu sama lain. Contoh penggunaan row adalah untuk menyusun widget-widget kecil seperti ikon, teks, atau tombol secara berdampingan.

    - Column: Mirip dengan row, namun digunakan untuk menyusun widget secara vertikal. Contoh penggunaan column adalah untuk menata widget-widget dalam susunan vertikal seperti daftar, teks panjang, atau tombol.

    - Stack: Memungkinkan penumpukan widget di atas satu sama lain. Berguna untuk membuat tata letak yang kompleks, menempatkan widget di atas widget lain, seperti overlay atau animasi.

    - SizedBox: Mengatur ukuran jarak atau spasi yang tetap, baik secara horizontal maupun vertikal.

    - GridView: Digunakan untuk menampilkan data dalam bentuk grid. Bisa berupa grid horizontal atau vertikal dengan banyak item yang ditampilkan dalam bentuk kolom dan baris.

    - ListView: Widget yang memungkinkan tampilan daftar yang dapat di-gulir. Cocok untuk menampilkan daftar elemen yang dapat dilihat dan dijelajahi, baik secara horizontal maupun vertikal.

    - Expanded: Membungkus widget tunggal dalam Row, Column, atau Flex untuk mengalokasikan ruang tambahan pada widget tersebut berdasarkan rasio yang ditentukan.

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

    Jawab : 
    
    - TextFormField Pertama (Nama Item) : Digunakan untuk mengambil input nama item dari pengguna. Ini adalah kotak teks yang meminta pengguna untuk memasukkan nama item yang ingin ditambahkan. Terdapat validasi bahwa input nama item tidak boleh kosong.

    - TextFormField Kedua (Jumlah) : Digunakan untuk mengambil input jumlah item dari pengguna. Ini adalah kotak teks yang meminta pengguna untuk memasukkan jumlah item yang ingin ditambahkan. Terdapat validasi bahwa input jumlah item tidak boleh kosong dan tidak boleh selain angka (integer).

    - TextFormField Ketiga (Deskripsi) : Digunakan untuk mengambil input deskripsi item dari pengguna. Ini adalah kotak teks yang meminta pengguna untuk memasukkan deskripsi item yang ingin ditambahkan. Terdapat validasi bahwa input deskripsi item tidak boleh kosong.

4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

    Jawab : Clean architecture pada aplikasi Flutter merupakan strukturisasi proyek menjadi beberapa lapisan utama untuk memisahkan keterpisahan peran dan tanggung jawab masing-masing bagian. Tujuan pemisahan tersebut agar kode lebih mudah dipelihara, kode dapat diuji dengan baik, dan kode menjadi lebih fleksibel. Clean architecture dapat dibagi menjadi 3 lapisan, yakni lapisan domain, lapisan data, dan lapisan presentasi. Lapisan pertama adalah lapisan domain yang merupakan lapisan dimana logika aplikasi disimpan.    Lapisan kedua adalah lapisan data yang merupakan lapisan yang bertanggung jawab atas pengambilan data dari berbagai sumber, baik lokal maupun eksternal. Lapisan terakhir adalah lapisan presentasi yang merupakan lapisan yang berkaitan dengan tampilan/antarmuka dan status aplikasi. Penerapan clean architecture pada apliksai Flutter dapat dilakukan sebagai berikut :
    
    - Pisahkan dan Organisasi Kode: Tempatkan setiap bagian dari Clean Architecture ke dalam paket/pustaka terpisah untuk memastikan keterpisahan yang baik antara lapisan.

    - Ketergantungan Antar Lapisan: Lapisan Domain tidak boleh bergantung pada lapisan apapun. Lapisan Data mengimplementasikan kontrak dari lapisan Domain (interfaces, abstract classes) untuk mendapatkan data. Lapisan Presentasi menggunakan Use Cases dari Domain untuk berkomunikasi dengan bisnis.

    - Dependency Injection: Gunakan teknik seperti get_it atau provider untuk mengelola ketergantungan antar lapisan dan untuk menyediakan implementasi konkret di tempat yang sesuai.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

    Jawab : checklist(ck):

    - ck1 (Membuat Form): Pertama-tama saya membuka direktori lib dan membuat berkas file baru bernama nadteriallist_form.dart. Kemudian, saya menambahkan import dan potongan kode serta mengubah kode Placeholder. Selanjutnya, saya menambahkan variabel baru bernama _formkey serta menambahkan field untuk form berupa nama item, amount, dan deskripsi. Terakhir, saya membuat widget column dan mengisinya dengan 3 TextFormField (nama, jumlah, deskripsi) yang dibungkus dalam padding serta align. Di dalam TextFormField tersebut saya juga menambahkan tombol save dan beberapa validasi input, seperti tidak kosong serta harus berisi data dengan tipe data atribut modelnya. 

    - ck2 (Navigasi) : Pada berkas file menu.dart, saya menambahkan potongan kode push() untuk navigasi rute sesuai dengan tombol yang ditekan. Pada saat pengguna menekan tombol tambah item, pengguna akan menuju halaman form tambah item.

    - ck3 (Memunculkan data pop-up) : Pertama-tama saya membuka berkas file nadteriallist_form.dart. Kemudian, pada kode bagian align, saya menambahkan fungsi showDialog() di bagian onPressed() serta memunculkan widget AlertDialog pada fungsi tersebut. 

    - ck4 (Membuat drawer) : Pertama-tama, saya membuat direktori baru bernama widgets dan berkas file baru bernama left_drawer.dart dalam direktori tersebut. Kemudian, saya menambahkan potongan kode dan import package pada berkas file tersebut. Selanjutnya, saya memasukkan routing untuk halaman-halaman yang telah diimpor. Setelah itu, saya membuat drawer header untuk menghias drawer dengan potongan kode DrawerHeader. Terakhir, saya menambahkan drawer yang telah dibuat pada halaman yang ingin ditambahkan drawer.

    - ck5 (readme) : Saya membuka berkas readme pada vscode dan mengisi jawaban dari soal-soal tugas 8 di atas batas tugas 7.

    - ck6 : Saya membuka command prompt (cmd) proyek flutter saya dan mengaktifkan env. Setelah itu, saya melakukan perintah git add, commit, dan push.

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