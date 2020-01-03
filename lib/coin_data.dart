import 'network/networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];
const bitcoinURL = 'https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC';

class CoinData {
  Future<String> getCoinData(String currency) async {
    var url = '$bitcoinURL' + currency;
    NetworkHelper networkHelper = NetworkHelper(url: url);

    var bitcoinData = await networkHelper.getData();
    double data = bitcoinData['last'];
    return data.toStringAsFixed(0);
  }
}
