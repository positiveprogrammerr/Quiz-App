import 'package:flutter/material.dart';
import 'package:quiz_app/pages/quiz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Quiz App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 180,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/images/logo.jpg', scale: 5),
          ]),
          const SizedBox(
            height: 130,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuizPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.red,
                    elevation: 5,
                    backgroundColor: Colors.white,
                    fixedSize: const Size(250, 47),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      27,
                    ))),
                child: const Text(
                  'Start',
                  style: TextStyle(
                      fontFamily: 'InriaSans',
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
