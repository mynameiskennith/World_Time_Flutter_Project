import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    Response response =
        await get(Uri.https('jsonplaceholder.typicode.com', 'todos/1'));
    //A json string is being printed.
    //i.e. it looks like a object, but it is not, we cannot access each of the data as in key
    //value pairs, the entire content is a "JSON STRING" !!!

    // print(response.body);
    Map data = jsonDecode(response.body);
    print(data);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
