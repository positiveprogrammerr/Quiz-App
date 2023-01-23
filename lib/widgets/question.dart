import 'package:flutter/material.dart';

// ignore: must_be_immutable
class QuestionPage extends StatefulWidget {
  QuestionPage(
      this.switchs, this.question, this.javoblar, this._incrementCounter,
      {super.key});
  final String question;
  final List<Map<String, dynamic>> javoblar;
  final Function _incrementCounter;
  bool switchs = false;

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.question,
                style: TextStyle(
                    color: widget.switchs ? Colors.white : Colors.black,
                    fontSize: 22,
                    fontFamily: 'InriaSans',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget._incrementCounter(widget.javoblar[0]['istrue']);
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        widget.switchs ? Colors.white : Colors.black,
                    fixedSize: const Size(260, 60), // specify width, height
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      25,
                    ))),
                child: Center(
                  child: Text(
                    widget.javoblar[0]['answer'],
                    style: TextStyle(
                        fontFamily: 'InriaSans',
                        fontSize: 20,
                        color: widget.switchs ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget._incrementCounter(widget.javoblar[1]['istrue']);
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        widget.switchs ? Colors.white : Colors.black,
                    fixedSize: const Size(260, 60), // specify width, height
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      25,
                    ))),
                child: Center(
                  child: Text(
                    widget.javoblar[1]['answer'],
                    style: TextStyle(
                        fontFamily: 'InriaSans',
                        fontSize: 20,
                        color: widget.switchs ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget._incrementCounter(widget.javoblar[2]['istrue']);
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        widget.switchs ? Colors.white : Colors.black,
                    fixedSize: const Size(250, 60), // specify width, height
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      25,
                    ))),
                child: Center(
                  child: Text(
                    widget.javoblar[2]['answer'],
                    style: TextStyle(
                        fontFamily: 'InriaSans',
                        fontSize: 20,
                        color: widget.switchs ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget._incrementCounter(widget.javoblar[3]['istrue']);
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        widget.switchs ? Colors.white : Colors.black,
                    fixedSize: const Size(260, 60), // specify width, height
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      25,
                    ))),
                child: Center(
                  child: Text(
                    widget.javoblar[3]['answer'],
                    style: TextStyle(
                        fontFamily: 'InriaSans',
                        fontSize: 20,
                        color: widget.switchs ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 44,
        ),
      ],
    );
  }
}
