import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_integration/generated/json/base/json_convert_content.dart';
import 'package:flutter_api_integration/models/user_response_entity.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    title: 'MyApiDemo',
    home: MyApi(),
  ));
}

class MyApi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyApiState();
  }
}

class MyApiState extends State<MyApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Use Future Builder for getting response here.
        child: FutureBuilder(
//            future: _getApiCallUsingHttp(), // here we will get http response
            // Now Lets we call API using dio Instead of http
            future: _getApiCallUsingDio(), // here we will get http response
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // If response has a data means response is success then so data in a application
                var data = snapshot.data;
                // Now first check this data is bind with model or not.
                if (data is UserResponseEntity) {
                  // if yes then it means we can access data using model object
                  return Text(
                    'Name: ${data.name} \nLocation: ${data.location} ',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  );
                } else {
                  return Text('Bind Error');
                }
              } else if (snapshot.hasError) {
                // If response has any error then show Error as a message
                return Text('Error');
              } else {
                // If Processing return circular progress indicator
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }

// Now First let we call our API using HTTP Request:
  Future<UserResponseEntity> _getApiCallUsingHttp() async {
    final response = await http
        .get('https://api.github.com/users/0'); // set our API URL here
    // Now first check with response status code
    if (response.statusCode == 200) {
      // If response is success
      var data = response.body; // this will give API response in String format
      print('$data');
      // Now we need to convert or decode in Json
      var json = jsonDecode(data); // we can ignore this step while using dio.
      // Now Response is decoded in Json so We can use this json to bind in our Model class
      // To bind lets use Plugin's Helper classes.
      return JsonConvert.fromJsonAsT<UserResponseEntity>(
          json); // This will return Model class.
    } else {
      // If failed to get response
      throw Exception('Error');
    }
  }

// let we call our API using dio Request:
  Future<UserResponseEntity> _getApiCallUsingDio() async {
    Dio dio = Dio(); // first create object of Dio lib
    final response = await dio.get(
        'https://api.github.com/users/1'); // add path for your get api here.
    if (response.statusCode == 200) {
      // If response is success
      var data = response.data; // here data is converted json - Not a String.
      // This is handled by dio package internally so we don't need to handle this manually
      return JsonConvert.fromJsonAsT<UserResponseEntity>(data);
    } else {
      throw Exception('Error');
    }
  }

}
