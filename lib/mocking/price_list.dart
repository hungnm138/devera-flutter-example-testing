import 'package:http/http.dart' as http;

class PriceList {
  static const _source = "https://devera.vn/apis/get/prices";

  Future<String> queryPrices(http.Client client) async {
    final response = await client.get(Uri.parse(_source));

    if (response.statusCode == 200) {
      return response.body;
    }

    return '{}';
  }
}
