import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<dynamic> LicensePlateUK(String Reg, String Username, String Password) async {  
  String basicAuth = 'Basic ' + convert.base64Encode(convert.utf8.encode('$Username:$Password'));
  String url = 'https://www.regcheck.org.uk/api/json.aspx/Check/$Reg';  
  var response = await http.get(url,
      headers: <String, String>{'authorization': basicAuth});
  return convert.jsonDecode(response.body);
}
