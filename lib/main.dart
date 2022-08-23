import 'package:coins_app/providers/coin_provider.dart';
import 'package:coins_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() {
  runApp(const CoinsApp());
}

class CoinsApp extends StatelessWidget {
  const CoinsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Coins(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coins App',
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
        },
      ),
    );
  }
}
