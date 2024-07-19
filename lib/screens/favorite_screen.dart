import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteItems = [
    {
      'image': 'assets/image1.png',
      'name': 'Salad MOI (#1 Healthy Salad Buah)',
      'category': 'Salad, Juice & Smoothies, Buah-buahan',
      'rating': 4.8,
      'distance': '4km',
      'time': '39min',
      'discount': 'Diskon 70%',
      'freeShipping': 'Gratis Ongkir',
      'menuDiscount': 'Menu Diskon',
    },
    {
      'image': 'assets/image2.png',
      'name': 'Warmindo Putra Petir - Umbulharjo',
      'category': 'Bakmi',
      'rating': 4.8,
      'distance': '2km',
      'time': '29min',
      'discount': 'Diskon 20%',
      'freeShipping': 'Diskon Ongkir',
    },
    {
      'image': 'assets/image3.png',
      'name': 'Dapur Mpok Duren - Glagahsari',
      'category': 'Jajanan Manis, Es Krim',
      'rating': 4.9,
      'distance': '4km',
      'time': '37min',
      'discount': 'Diskon 70%',
      'freeShipping': 'Diskon Ongkir',
    },
    {
      'image': 'assets/image4.png',
      'name': 'Dapur Memayu Mentai And Pasta',
      'category': 'Pizza & Pasta',
      'rating': 4.9,
      'distance': '4km',
      'time': '39min',
      'discount': 'Diskon 70%',
      'freeShipping': 'Gratis Ongkir',
    },
    {
      'image': 'assets/image5.png',
      'name': 'Jus Seger Buger & Snack - Sewon',
      'category': 'Jajanan, Juice & Smoothies',
      'rating': 4.7,
      'distance': '2km',
      'time': '33min',
      'discount': 'Diskon 70%',
      'freeShipping': 'Gratis Ongkir',
      'menuDiscount': 'Menu Diskon',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Favorite',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: Image.asset(
                favoriteItems[index]['image'],
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(
                favoriteItems[index]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(favoriteItems[index]['category']),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      SizedBox(width: 2),
                      Text(
                        '${favoriteItems[index]['rating']}',
                        style: TextStyle(color: Colors.orange),
                      ),
                      SizedBox(width: 10),
                      Text('${favoriteItems[index]['distance']}'),
                      SizedBox(width: 10),
                      Text('${favoriteItems[index]['time']}'),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      if (favoriteItems[index].containsKey('discount'))
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            favoriteItems[index]['discount'],
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      if (favoriteItems[index].containsKey('freeShipping'))
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            favoriteItems[index]['freeShipping'],
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      if (favoriteItems[index].containsKey('menuDiscount'))
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          margin: EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            favoriteItems[index]['menuDiscount'],
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              trailing: Icon(Icons.favorite, color: Colors.red),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: 2,
        selectedItemColor: Colors.purple,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.popUntil(context, ModalRoute.withName('/'));
              break;
            case 1:
              Navigator.pushNamed(context, '/pesanan');
              break;
            case 2:
            // Already on favorite screen
              break;
          }
        },
      ),
    );
  }
}
