import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Screen App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Codeplayon',
            style: TextStyle(color: Colors.lightBlue, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'User Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.lightBlue, fontSize: 18),
              )),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                fixedSize: Size(MediaQuery.of(context).size.width * .9,
                    MediaQuery.of(context).size.height * .06),
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadiusDirectional.all(Radius.circular(4)))),
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Does not have account',
                style: TextStyle(fontSize: 18),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 20),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
