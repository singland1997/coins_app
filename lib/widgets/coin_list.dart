import 'package:coins_app/providers/coin_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoinList extends StatefulWidget {
  const CoinList({Key? key}) : super(key: key);

  @override
  State<CoinList> createState() => _CoinListState();
}

class _CoinListState extends State<CoinList> {
  @override
  void initState() {
    final coins = Provider.of<Coins>(context, listen: false);
    coins.getCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final coins = Provider.of<Coins>(context);
    return coins.loading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: coins.coins.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(coins.coins[index].name),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                          '\$${double.parse(coins.coins[index].price).toStringAsFixed(5)}'),
                      Text(coins.coins[index].change),
                    ],
                  ),
                ),
              );
            },
          );
  }
}
