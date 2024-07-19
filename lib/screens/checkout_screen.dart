import 'package:flutter/material.dart';
import 'pesan_antar_screen.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konfirmasi Pesanan'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Restaurant Info Section
            ListTile(
              title: Text('Dapur Mpok Duren - Glagahsari'),
              subtitle: Text('PAKET DELIGHT 2'),
              trailing: Text('Rp73.000'),
            ),
            Divider(),

            // Item Section
            ListTile(
              leading: Image.asset('assets/image11.png', width: 50, height: 50), // Replace with your image asset
              title: Text('PAKET DELIGHT 2'),
              subtitle: Text('Rp73.000'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {},
                  ),
                  Text('1'),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(),

            // Frequently Ordered Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Menu lain yang sering dipesan', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Repeat for each frequently ordered item
                  frequentlyOrderedItem('assets/image10.png', 'Mpok Original', 'Rp25.000'),
                  frequentlyOrderedItem('assets/image9.png', 'Ice Cream', 'Rp50.000'),
                ],
              ),
            ),
            Divider(),

            // Note Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Mohon tinggalkan catatan...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Divider(),

            // Total Section
            ListTile(
              title: Text('Total Pesanan:'),
              trailing: Text('Rp73.000'),
            ),
            Divider(),

            // Voucher Section
            ListTile(
              title: Text('Voucher'),
              trailing: Text('29 Voucher Tersedia'),
            ),
            Divider(),

            // Shopee Coins Section
            SwitchListTile(
              title: Text('Tukar 1080 Shopee Koin'),
              value: false,
              onChanged: (bool value) {},
            ),
            Divider(),

            // Payment Method Section
            ListTile(
              title: Text('Pilihan Pembayaran'),
              trailing: Text('COD'),
            ),
            Divider(),

            // Subtotal Section
            ListTile(
              title: Text('Subtotal Pesanan (1 menu)'),
              trailing: Text('Rp73.000'),
            ),
            ListTile(
              title: Text('Biaya Pengiriman'),
              trailing: Text('Rp13.000'),
            ),
            ListTile(
              title: Text('Biaya Layanan'),
              trailing: Text('Rp4.000'),
            ),
            Divider(),

            // Total Payment Section
            ListTile(
              title: Text('Total Pembayaran', style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Text('Rp90.000', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Divider(),

            // Order Button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PesanAntarScreen()),
                  );
                },
                child: Text('Buat Pesanan Antar', style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget frequentlyOrderedItem(String imagePath, String name, String price) {
    return Container(
      width: 150,
      child: Card(
        child: Column(
          children: [
            Image.asset(imagePath, height: 80, width: 80, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(price),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CheckoutScreen(),
  ));
}