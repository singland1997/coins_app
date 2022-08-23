import 'dart:convert';

class Coin {
  String name;
  String symbol;
  String color;
  String iconUrl;
  String price;
  String change;
  Coin({
    required this.name,
    required this.symbol,
    required this.color,
    required this.iconUrl,
    required this.price,
    required this.change,
  });

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      name: json['name'] ?? '',
      symbol: json['symbol'] ?? '',
      color: json['color'] ?? '',
      iconUrl: json['iconUrl'] ?? '',
      price: json['price'] ?? '',
      change: json['change'] ?? '',
    );
  }
}
