import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'qii.Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: const Color(0xFFFFF8E1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFC107),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          centerTitle: true,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome To qii.Shop'),
        actions: [
          IconButton(
            onPressed: () {
              print('Icon setting ditekan');
            },
            icon: const Icon(Icons.settings),
            tooltip: 'Pengaturan',
          ),
          IconButton(
            onPressed: () {
              print('Icon person ditekan');
            },
            icon: const Icon(Icons.person),
            tooltip: 'Profil',
          ),
        ],
      ),

      // 🧭 Drawer ditambahkan di sini:
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Zaqi Maulana'),
              accountEmail: Text('qii@mu.shop'),
              currentAccountPicture: CircleAvatar(
               backgroundImage: NetworkImage(
                'https://prod.static9.net.au/fs/1f5a7072-3ee7-4235-b607-a12284d5dd87',
               ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFFFC107),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Beranda'),
              onTap: () {
                Navigator.pop(context); // menutup drawer
                print('Menu Beranda dipilih');
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text('Produk'),
              onTap: () {
                Navigator.pop(context);
                print('Menu Produk dipilih');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Pengaturan'),
              onTap: () {
                Navigator.pop(context);
                print('Menu Pengaturan dipilih');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang Aplikasi'),
              onTap: () {
                Navigator.pop(context);
                print('Menu Tentang dipilih');
              },
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          'Halo, ini halaman utama saya!',
          style: TextStyle(
            fontSize: 22,
            color: Colors.brown,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating Action Button ditekan');
        },
        backgroundColor: Colors.amber,
        tooltip: 'Kembali ke Home',
        child: const Icon(Icons.home, color: Colors.white),
      ),
    );
  }
}