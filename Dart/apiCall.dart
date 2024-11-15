//! PLease run in the dart pad

import 'package:http/http.dart' as http;
import 'dart:convert' as convAVert;

void main() async {
  var uri = Uri.https('jsonplaceholder.typicode.com', '/users/1');
  var response = await http.get(uri);
  if(response.statusCode == 200){
//     print(response.body);
    var user = convert.jsonDecode(response.body) as Map<String, dynamic>;
    user.forEach((k , v){
      print("key :${k}");
      print("Value :${v}");
    });
  }
//   print(response);
  
}


//! PLease run in the dart pad