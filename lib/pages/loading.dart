import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    //   Response response =
    //       await get(Uri.https('jsonplaceholder.typicode.com', 'todos/1'));

    //   //A json string is being printed.
    //   //i.e. it looks like a object, but it is not, we cannot access each of the data as in key
    //   //value pairs, the entire content is a "JSON STRING" !!!

    //   // print(response.body);
    //   Map data = jsonDecode(response.body);
    //   print(data);
    // }

    //Make request
    Response response =
        await get(Uri.http('worldtimeapi.org', 'api/timezone/Asia/Kolkata'));
    Map data = jsonDecode(response.body);
    // print(data);

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    // print('$datetime \n$offset');

    //create a date time object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
