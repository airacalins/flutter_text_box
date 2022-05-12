// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nameController = TextEditingController();

  String name = 'Aira';

  @override
  void initState() {
    nameController.text = 'Aira';
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                keyboardType: TextInputType.number,
                // hide the text to ****
                // obscureText: true,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Please enter your name',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = nameController.text;
                  });
                },
                child: Text('Submit'),
              ),
              Text('Your name is $name')
            ],
          ),
        ),
      ),
    );
  }
}
