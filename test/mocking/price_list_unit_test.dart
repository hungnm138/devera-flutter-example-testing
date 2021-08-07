import 'package:flutter_example_testing/mocking/price_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

class HttpMock extends Mock implements http.Client {}

void main() {
  final httpClientMock = HttpMock();
  final uri = 'https://devera.vn/apis/get_price_list'; // just example
  final json = '{"prices": [1, 2, 3, 4, 5]}';

  test('Expect JSON body to be returned when HTTP invocation is successful.',
      () async {
    final priceList = PriceList();

    // Use 'thenAnswer' instead of 'thenReturn'
    // if the invocation to be mocked returns a 'Future<T>'
    when(httpClientMock.get(Uri.parse(uri)))
        .thenAnswer((_) async => http.Response(json, 200));

    final result = await priceList.queryPrices(httpClientMock);

    expect(result, json);
  });
}
