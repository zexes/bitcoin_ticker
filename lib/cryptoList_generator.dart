import 'package:flutter/material.dart';

List<Widget> generateWidgetsPadding(
    String last, String selected, List<String> cryptoList) {
  List<Widget> widgets = [];

  for (String cryptoKey in cryptoList) {
    CryptoWidget cryptoWidget = CryptoWidget(
        cryptoPrice: cryptoKey, lastValue: last, selectedCurrency: selected);

    widgets.add(cryptoWidget);
  }

  return widgets;
}

class CryptoWidget extends StatelessWidget {
  CryptoWidget({
    @required this.cryptoPrice,
    @required this.lastValue,
    @required this.selectedCurrency,
  });

  final String cryptoPrice;
  final String lastValue;
  final String selectedCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $cryptoPrice = $lastValue $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
