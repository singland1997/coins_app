import 'package:coins_app/models/coin_model.dart';
import 'package:coins_app/services/fetch_api.dart';
import 'package:flutter/cupertino.dart';

class Coins with ChangeNotifier {
  List<Coin> coins = [];
  bool loading = false;

  getCoins() async {
    loading = true;
    coins = await fetchCoins();
    loading = false;
    notifyListeners();
  }
}
