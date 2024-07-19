import 'package:flutter/material.dart';

class PesanAntarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Makananmu lagi disiapin'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          DriverInfoSection(),
          SizedBox(height: 16.0),
          AdvertisementCard(
            imageUrl: 'https://pbs.twimg.com/media/FTuoQQ0UYAMwHyL.jpg',
            description: 'Diskon s.d. 30%',
          ),
          SizedBox(height: 16.0),
          TipDriverSection(),
          SizedBox(height: 16.0),
          AdvertisementCard(
            imageUrl: 'https://foto.kontan.co.id/AITsC2NWFON5_MhO8UCaTC8TGJQ=/smart/2024/06/06/1068329592p.jpg',
            description: 'Pasti dapet diskon s.d. 12rb di setiap transaksi pake Mamam PLUS!',
          ),
          SizedBox(height: 20.0),
          DeliveryRouteSection(
            restaurantName: 'Sate Otentik, Tendean',
            restaurantAddress: 'Jl Kapten Piere Tendean No 42 Yogyakarta',
            destinationName: 'GROOVY LIVING KOST PUTRI',
            destinationAddress: 'Salakan Baru, 5998+97M, Saman, Bangunharjo, Kec. Sewon',
          ),
        ],
      ),
    );
  }
}

class DriverInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://i.pinimg.com/564x/21/cf/55/21cf55469ef142c732c21857232484d1.jpg'),
        ),
        title: Text('Guntur Surono Putro'),
        subtitle: Text('AB5619AA\nChat untuk diantar tanpa kontak fisik'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.phone),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class AdvertisementCard extends StatelessWidget {
  final String imageUrl;
  final String description;

  AdvertisementCard({required this.imageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}

class TipDriverSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.card_giftcard, color: Colors.green),
        title: Text('Kasih tip buat driver'),
        subtitle: Text('Tipmu pasti berharga untuknya.'),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text('Kasih tip'),
        ),
      ),
    );
  }
}

class DeliveryRouteSection extends StatelessWidget {
  final String restaurantName;
  final String restaurantAddress;
  final String destinationName;
  final String destinationAddress;

  DeliveryRouteSection({
    required this.restaurantName,
    required this.restaurantAddress,
    required this.destinationName,
    required this.destinationAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant),
            SizedBox(height: 15.0),
            Icon(Icons.arrow_downward),
            SizedBox(height: 15.0),
            Icon(Icons.home),
          ],
        ),
        title: Text(restaurantName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(restaurantAddress),
            SizedBox(height: 15.0),
            Text(destinationName),
            Text(destinationAddress),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PesanAntarScreen(),
  ));
}