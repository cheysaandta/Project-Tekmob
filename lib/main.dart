import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/reset_password_screen.dart';
import 'screens/email_verification_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/pesanan_screen.dart';
import 'screens/favorite_screen.dart';
import 'screens/keranjang_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/pesan_antar_screen.dart';

void main() {
  runApp(SajianKilatApp());
}

class SajianKilatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sajian Kilat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/reset-password': (context) => ResetPasswordScreen(),
        '/email-verification': (context) => EmailVerificationScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/settings': (context) => SettingsScreen(),
        '/cart': (context) => CartScreen(),
        '/pesanan': (context) => PesananScreen(),
        '/favorite': (context) => FavoriteScreen(),
        '/keranjang': (context) => KeranjangScreen(),
        '/checkout': (context) => CheckoutScreen(),
        '/pesan-antar': (context) => PesanAntarScreen(),
      },
    );
  }
}
