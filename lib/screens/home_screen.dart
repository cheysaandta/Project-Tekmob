import 'package:flutter/material.dart';
import 'pesanan_screen.dart';
import 'favorite_screen.dart';
import 'keranjang_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> foodItems = [
    {
      'image': 'assets/image1.png',
      'name': 'Nasi Goreng Ayam',
      'rating': 4.5,
      'description': 'Nasi goreng dengan potongan ayam yang gurih dan sayuran segar, dilengkapi dengan telur mata sapi.',
      'price': 'Rp 25,000',
    },
    {
      'image': 'assets/image2.png',
      'name': 'Bakso Kuah',
      'rating': 4.7,
      'description': 'Bakso daging sapi dengan kuah kaldu yang lezat, disajikan dengan mie putih dan sayuran hijau.',
      'price': 'Rp 20,000',
    },
    {
      'image': 'assets/image3.png',
      'name': 'Sate Ayam',
      'rating': 4.8,
      'description': 'Sate ayam dengan bumbu kacang yang lezat, disajikan dengan potongan lontong dan acar.',
      'price': 'Rp 30,000',
    },
    {
      'image': 'assets/image4.png',
      'name': 'Waffle Caramel Berry',
      'rating': 4.8,
      'description': 'Waffle kue berbahan dasar tepung terigu yang memiliki beranekaragam rasa',
      'price': 'Rp 30,000',
    },
    {
      'image': 'assets/image5.png',
      'name': 'Fruit Sando',
      'rating': 4.8,
      'description': 'Camilan khas Jepang yang sangat ikonik. Fruit Sando diisi dengan potongan-potongan buah dan dibalur Whipped Cream.',
      'price': 'Rp 25,000',
    },
    {
      'image': 'assets/image6.png',
      'name': 'Pizza Pepperoni',
      'rating': 4.8,
      'description': 'Pizza dengan toping pepperoni yang lezat dan keju mozzarella yang meleleh.',
      'price': 'Rp 30,000',
    },
    {
      'image': 'assets/image7.png',
      'name': 'French Fries',
      'rating': 4.8,
      'description': 'Kentang goreng renyah yang lezat, disajikan dengan saus pilihan.',
      'price': 'Rp 25,000',
    },
    {
      'image': 'assets/image8.png',
      'name': 'Smoothie Strawberry',
      'rating': 4.8,
      'description': 'Stroberi smoothies adalah minuman yang terbuat dari susu dan stroberi.',
      'price': 'Rp 25,000',
    },
    {
      'image': 'assets/image9.png',
      'name': 'Pearl Milk Tea',
      'rating': 4.8,
      'description': 'Minuman ini terdiri dari teh yang dicampur dengan susu, gula, dan bola-bola tapioka yang kenyal.',
      'price': 'Rp 25,000',
    },
    {
      'image': 'assets/image10.png',
      'name': 'Juice Manggo',
      'rating': 4.8,
      'description': 'Jus mangga adalah minuman yang terbuat dari buah mangga.',
      'price': 'Rp 25,000',
    },
    {
      'image': 'assets/image11.png',
      'name': 'Milk Matcha',
      'rating': 4.8,
      'description': 'Minuman yang terbuat dari matcha bubuk dicampur dengan susu cair.',
      'price': 'Rp 25,000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png', // Replace with your logo asset
              height: 50,
            ),
            SizedBox(width: 6),
            Text(
              'MamamFood',
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari makanan...',
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KeranjangScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Alamat Penerima Section
            Container(
              color: Colors.grey.shade100,
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.red),
                  SizedBox(width: 5),
                  Text('Alamat Penerima: Jl. Kebon Jeruk No.27', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            // Banner Section
            Container(
              padding: EdgeInsets.all(5.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  List<Map<String, dynamic>> menuItems = [
                    {'icon': Icons.location_on, 'label': 'Sekitarmu'},
                    {'icon': Icons.discount, 'label': 'Diskon Terus'},
                    {'icon': Icons.local_shipping, 'label': 'Gratis Ongkir s/d 15RB'},
                    {'icon': Icons.shopping_basket, 'label': 'Pickup'},
                    {'icon': Icons.percent, 'label': 'Promo'},
                    {'icon': Icons.card_membership, 'label': 'Voucher'},
                    {'icon': Icons.card_giftcard, 'label': 'Paket Voucher'},
                    {'icon': Icons.star, 'label': 'Best Seller'},
                  ];
                  return Column(
                    children: [
                      Icon(menuItems[index]['icon'], color: Colors.blueGrey, size: 30),
                      Text(menuItems[index]['label'], textAlign: TextAlign.center, style: TextStyle(fontSize: 10.0)),
                    ],
                  );
                },
              ),
            ),
            // Flash Sale Section
            Container(
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('FLASH SALE', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14)),
                  Text('00 : 47 : 38', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14)),
                  Text('Lihat Semua', style: TextStyle(color: Colors.red, fontSize: 12)),
                ],
              ),
            ),
            // Food Items Section
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.asset(foodItems[index]['image'], height: 150.0, fit: BoxFit.cover),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(foodItems[index]['name'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                              Text('Rating: ${foodItems[index]['rating']}', style: TextStyle(fontSize: 10)),
                              Text(foodItems[index]['description'], style: TextStyle(fontSize: 10)),
                              Text(foodItems[index]['price'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/');
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PesananScreen()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoriteScreen()),
              );
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Pesanan Saya',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}