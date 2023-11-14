import 'package:flutter/material.dart';
import 'package:nadterial_store/screens/nadteriallist_form.dart';
import 'package:nadterial_store/widgets/left_drawer.dart';
import 'package:nadterial_store/widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    final List<ShopItem> items = [
        ShopItem("Lihat Item", Icons.checklist, Colors.blue),
        ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.green),
        ShopItem("Logout", Icons.logout, Colors.red),
    ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
              title: const Text(
                'Nadterial Store',
                style: TextStyle(
                  color: Colors.white, // Mengatur warna teks menjadi putih
                ),  
              ),
            ),
      drawer : const LeftDrawer(),
      body: SingleChildScrollView(
          // Widget wrapper yang dapat discroll
        child: Padding(
        padding: const EdgeInsets.all(10.0), // Set padding dari halaman
        child: Column(
          // Widget untuk menampilkan children secara vertikal
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
              child: Text(
                'PBP Inventory', // Text yang menandakan toko
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Grid layout
            GridView.count(
              // Container pada card kita.
              primary: true,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              shrinkWrap: true,
              children: items.map((ShopItem item) {
                // Iterasi untuk setiap item
                return ShopCard(item);
              }).toList(),
            ),
          ],
        ),
      ),
    ),
  );
  }
}
