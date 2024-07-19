import 'package:flutter/material.dart';

class PesananScreen extends StatelessWidget {
  final List<Order> orders = [
    Order(
      id: '2143855176221696671',
      restaurant: 'Dapur Mpok Duren - Glagahsari',
      date: '17 Jul 2024',
      items: [
        OrderItem(name: 'PAKET DELIGHT 2', price: 59800, quantity: 1),
      ],
    ),
    Order(
      id: '214372211460096671',
      restaurant: 'Bolosego Resto & Store',
      date: '17 Jul 2024',
      items: [
        OrderItem(name: 'Kerupuk', price: 5000, quantity: 1),
        OrderItem(name: 'Ceker Mercon', price: 42000, quantity: 1),
        OrderItem(name: 'Nasi putih', price: 5000, quantity: 1),
      ],
    ),
    Order(
      id: '2140954861847040671',
      restaurant: 'Mamam Food - Pringgolayan',
      date: '15 Jul 2024',
      items: [
        OrderItem(name: 'Nasi Goreng Spesial', price: 30000, quantity: 1),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan Saya'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return OrderCard(order: orders[index]);
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
        currentIndex: 1,
        selectedItemColor: Colors.purple,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.popUntil(context, ModalRoute.withName('/'));
              break;
            case 1:
            // Already on the orders screen
              break;
            case 2:
              Navigator.pushNamed(context, '/favorite');
              break;
          }
        },
      ),
    );
  }
}

class Order {
  final String id;
  final String restaurant;
  final String date;
  final List<OrderItem> items;

  Order({
    required this.id,
    required this.restaurant,
    required this.date,
    required this.items,
  });
}

class OrderItem {
  final String name;
  final int price;
  final int quantity;

  OrderItem({
    required this.name,
    required this.price,
    required this.quantity,
  });
}

class OrderCard extends StatelessWidget {
  final Order order;

  OrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(order.restaurant, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(order.date),
            SizedBox(height: 10),
            ...order.items.map((item) => Text('${item.name} - Rp${item.price}')),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Beri Penilaian'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Pesan lagi'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
