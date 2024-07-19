import 'package:flutter/material.dart';

import 'checkout_screen.dart';

class KeranjangScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjangku'),
      ),
      body: ListView(
        children: [
          OrderItem(
            restaurant: 'Kedai Dibakari - Umbulharjo',
            items: [
              OrderMenuItem(
                name: 'Tumis Kangkung',
                price: 12000,
                originalPrice: 15000,
                imageUrl: 'https://www.sasa.co.id/medias/user-recipes/tumis_kangkung.jpg',
              ),
              OrderMenuItem(
                name: 'Paket Ayam Bakar Bumbu Kacang',
                price: 34900,
                originalPrice: 43575,
                imageUrl: 'https://asset.kompas.com/crops/yoovaRyPxaPFOY4gfCciore2eUY=/3x0:700x465/750x500/data/photo/2020/12/30/5fec5602f116e.jpg',
              ),
              OrderMenuItem(
                name: 'Kerupuk',
                price: 2500,
                originalPrice: 3125,
                imageUrl: 'https://akcdn.detik.net.id/visual/2019/04/08/61e26008-2310-4041-9909-fa61b2ff2994_169.jpeg?w=750&q=90',
              ),
              OrderMenuItem(
                name: 'Paket Ayam Bakar Pedas Manis',
                price: 33100,
                originalPrice: 41375,
                imageUrl: 'https://asset.kompas.com/crops/yoovaRyPxaPFOY4gfCciore2eUY=/3x0:700x465/750x500/data/photo/2020/12/30/5fec5602f116e.jpg',
              ),
            ],
            totalPrice: 82500,
            originalTotalPrice: 103075,
            onCheckout: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutScreen()),
              );
            },
          ),
          OrderItem(
            restaurant: 'Dapur Cemal Cemil - Jl.Godean',
            items: [
              OrderMenuItem(
                name: 'Siomay Tuna GORENG',
                price: 26800,
                imageUrl: 'https://via.placeholder.com/150',
              ),
            ],
            totalPrice: 26800,
            onCheckout: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String restaurant;
  final List<OrderMenuItem> items;
  final int totalPrice;
  final int? originalTotalPrice;
  final VoidCallback onCheckout;

  OrderItem({
    required this.restaurant,
    required this.items,
    required this.totalPrice,
    this.originalTotalPrice,
    required this.onCheckout,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              restaurant,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Column(
              children: items.map((item) => item).toList(),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (originalTotalPrice != null)
                  Text(
                    'Total: Rp${originalTotalPrice.toString()}',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                Text(
                  'Rp${totalPrice.toString()}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
                ElevatedButton(
                  onPressed: onCheckout,
                  child: Text('Checkout'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OrderMenuItem extends StatelessWidget {
  final String name;
  final int price;
  final int? originalPrice;
  final String? imageUrl;

  OrderMenuItem({
    required this.name,
    required this.price,
    this.originalPrice,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: imageUrl != null
          ? Image.network(imageUrl!)
          : Container(
        width: 50,
        height: 50,
        color: Colors.grey[300],
        child: Icon(Icons.image, color: Colors.grey),
      ),
      title: Text(name),
      subtitle: originalPrice != null
          ? Text(
        'Rp${originalPrice.toString()}',
        style: TextStyle(
          decoration: TextDecoration.lineThrough,
        ),
      )
          : null,
      trailing: Text(
        'Rp${price.toString()}',
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: KeranjangScreen(),
  ));
}