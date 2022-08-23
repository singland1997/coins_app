import 'dart:convert';
import 'dart:developer';

import 'package:coins_app/models/coin_model.dart';
import 'package:http/http.dart' as http;

Future<List<Coin>> fetchCoins() async {
  List<Coin> result;

  final response = await http.get(
    Uri.parse('https://api.coinranking.com/v2/coins'),
    headers: {
      'x-access-token':
          'coinrankinga1717651c6694fb081d7cffda49bb6f096f904fbb46bc984'
    },
  );

  if (response.statusCode != 200) {
    print('Error ${response.body}');
  }

  final item = jsonDecode(response.body)['data']['coins'] as List;
  result = item.map((e) => Coin.fromJson(e)).toList();
  return result;
}
