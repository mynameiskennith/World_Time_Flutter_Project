import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  // void getData() {
  // void getData() async {
  //   //async added so that everything runs in a specific order
  //   // // simulate network request for username
  //   // Future.delayed(Duration(seconds: 3), () {
  //   //   print('Yoshi');
  //   // });

  //   // simulate network request for username
  //   // Future.delayed(Duration(seconds: 3), () {
  //   //   print('Yoshi');
  //   // });

  //   // simulate network request for username
  //   // await Future.delayed(Duration(seconds: 3), () {
  //   //   //await added so that only after the complete execution of this function the next codes will be executed
  //   //   print('Yoshi');
  //   // });

  //   String username = await Future.delayed(Duration(seconds: 3), () {
  //     //await added so that only after the complete execution of this function the next codes will be executed
  //     return 'Yoshi';
  //   });

  //   // // simulate network request to get bio of username
  //   // await Future.delayed(Duration(seconds: 2), () {
  //   //   print('Vegan musician egg collector');
  //   // });

  //   // simulate network request to get bio of username
  //   String bio = await Future.delayed(Duration(seconds: 2), () {
  //     return 'Vegan musician egg collector';
  //   });

  //   // print('Statement');
  //   print('$username - $bio');
  // }

  // @override
  // void initState(){
  //   super.initState();
  //   getData();
  //   print('Hey There');
  //   // print('init function ran');
  // }

  @override
  Widget build(BuildContext context) {
    print('build function ran');

    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Choose a Location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ElevatedButton(
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            child: Text('Counter is $counter'))
        //Text('Choose Location Screen'),
        );
  }
}
