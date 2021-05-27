import 'package:http/http.dart' as http;
import 'dart:convert' as json;

class CotacaoHelper {

  Future<Map> getCotacaoMoeda(String moeda) async {
    var uri = Uri.https('api.hgbrasil.com', 'finance');
    var response = await http.get(uri);
    return json.jsonDecode(response.body)['results']['currencies'][moeda.toUpperCase()];
  }
}