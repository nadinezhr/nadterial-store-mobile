import 'package:flutter/material.dart';
import 'package:nadterial_store/screens/list_product.dart';
import 'package:nadterial_store/screens/menu.dart';
import 'package:nadterial_store/screens/nadteriallist_form.dart';
//import 'package:nadterial_store/screens/nadteriallist_page.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Nadterial Store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Catat seluruh keperluan inventorimu di sini!",
                    
                    textAlign: TextAlign.center, // Center alignment
                    style: TextStyle(
                    fontSize: 15, // Font size 15
                    color: Colors.white, // Text color white
                    fontWeight: FontWeight.normal, // Normal font weight
                  ),
                    
                  ),
              ],
            ),
          ),

          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
        
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                ));
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.view_list),
          //   title: const Text('Lihat Item'),
          //   onTap: () {
          //     Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => ProductListPage(productList: productList),
          //       ));
          //   },
          // )
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Daftar Item'),
            onTap: () {
                // Route menu ke halaman produk
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductPage()),
                );
            },
        ),
        ],
      ),
    );
  }
}