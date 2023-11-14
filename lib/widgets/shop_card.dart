import 'package:nadterial_store/screens/nadteriallist_form.dart';
import 'package:flutter/material.dart';
import 'package:nadterial_store/screens/menu.dart'; // Impor berkas menu.dart jika diperlukan
import 'package:nadterial_store/widgets/left_drawer.dart'; 
import 'package:nadterial_store/screens/nadteriallist_page.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color color;

  ShopItem(this.name, this.icon, this.color);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          if (item.name == "Tambah Item") {
         
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ShopFormPage(),
              ));
          }

           if (item.name == "Lihat Buku") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductListPage(productList: productList)
              ));
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}