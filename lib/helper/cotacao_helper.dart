import 'package:ddm2_dindin_app/model/moeda.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as json;

class CotacaoHelper {
  Future<Map> getCotacaoMoeda() async {
    var uri = Uri.https('api.hgbrasil.com', 'finance', {'key':'SUA_ID'});
    //var uri = Uri.https('api.hgbrasil.com', 'finance');
    var response = await http.get(uri);
    return json.jsonDecode(response.body)['results']['currencies'];
  }
}