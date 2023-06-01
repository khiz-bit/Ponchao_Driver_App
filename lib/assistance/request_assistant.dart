import 'dart:convert';
import 'package:http/http.dart' as http;

class RequestAssistant{

  static Future<dynamic> recieveRequest(String url) async {
    http.Response httpResponse = await http.get(Uri.parse(url));

    try{
      if(httpResponse.statusCode == 200) // Succesful
        {
          String responseData = httpResponse.body; // json
          var decodeResponseData = jsonDecode(responseData);

          return decodeResponseData;
      }
      else{
        return "Error Occurred, No Response.";
      }
    } catch(exp){
      return "Error Occurred, No Response.";
    }
  }
}