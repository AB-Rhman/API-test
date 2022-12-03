import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:login_design/constant/const.dart';
import 'package:login_design/models/user_model.dart';

class LoginProvider extends ChangeNotifier {

  UserModel? userModel;

  login({required String email , required String pass }) async {
    try {
      http.Response response = await http.post(Uri.parse('${PASE_URL}/login'),
      body: {
        "email" : email,
        "password" : pass
      }
      );
      if(response.statusCode==200){
       UserModel userModel = UserModel.fromJson(json: json.decode(response.body)['data'] );
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

  signup()async {
    try {
      http.Response response = await http.post(Uri.parse('${PASE_URL}/register'),
          body: {
            "name" : "abdelrahman ayman",
            "phone" : "01023982",
            "email" : "berber11@gmail.com",
            "password" : "123456",
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

  add()async {
    try {
      http.Response response = await http.post(Uri.parse('https://student.valuxapps.com/api/favorites'),
          body: {
            "product_id" : "52"
          }, headers: {"Authorization" : "Z8tSc0l3NfEzA88IddKInzyNHpQBygIGCOdXOaU65yoXGdDZObk5d54GZNegCFZ6SzwpRT"}
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

  del()async {
    try {
      http.Response response = await http.delete(Uri.parse('https://student.valuxapps.com/api/favorites/106035'),
           headers: {"Authorization" : "Z8tSc0l3NfEzA88IddKInzyNHpQBygIGCOdXOaU65yoXGdDZObk5d54GZNegCFZ6SzwpRT"}
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
