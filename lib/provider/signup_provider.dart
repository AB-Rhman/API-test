import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class SignProvider extends ChangeNotifier{

  signup({ required username ,required email , required pass , required number})async {
    try {
      http.Response response = await http.post(Uri.parse('https://student.valuxapps.com/api/register'),
          body: {
            "name" : username,
            "phone" : number,
            "email" : email,
            "password" : pass,
            "image" : "",

          }
      );
      if(response.statusCode==200){
        print(json.decode(response.body));
        notifyListeners();
      }
    } on SocketException {
      print('Network error');
      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
  }


}