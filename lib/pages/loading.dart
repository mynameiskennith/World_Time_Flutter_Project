import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
    void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      //await added so that only after the complete execution of this function the next codes will be executed
      return 'Yoshi';
    });

    // simulate network request to get bio of username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Vegan musician egg collector';
    });

    print('$username - $bio');
  }

  @override
  void initState(){
    super.initState();
    getData();
    print('Hey There');
    // print('init function ran');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
