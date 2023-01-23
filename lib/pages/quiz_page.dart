import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/question.dart';

import '../widgets/restart.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  bool switchs = false;
  // ignore: non_constant_identifier_names
  int _quiz_num = 0;
  // ignore: non_constant_identifier_names
  int _true_answer = 0;

  List<Map<String, dynamic>> questionMap = [
    {
      'question': "1. I don't like coffee." "______ do I.'",
      'answerList': [
        {'answer': 'So', 'istrue': false},
        {'answer': 'Neither', 'istrue': false},
        {'answer': 'Either', 'istrue': true},
        {'answer': 'No', 'istrue': false}
      ],
    },
    {
      'question': "2. I come ____England",
      'answerList': [
        {'answer': 'from', 'istrue': false},
        {'answer': 'at', 'istrue': false},
        {'answer': 'to', 'istrue': true},
        {'answer': 'beyond', 'istrue': false}
      ],
    },
    {
      'question': "3. Tim ___ work tomorrow.",
      'answerList': [
        {'answer': "isn't going", 'istrue': false},
        {'answer': "isn't", 'istrue': false},
        {'answer': "isn't going to", 'istrue': true},
        {'answer': "isn't to", 'istrue': false}
      ],
    },
    {
      'question': "4. Do you think \nit’s ______ rain tomorrow?'",
      'answerList': [
        {'answer': "going", 'istrue': false},
        {'answer': "going to", 'istrue': true},
        {'answer': "to", 'istrue': false},
        {'answer': "will", 'istrue': false}
      ],
    },
    {
      'question': "5. Where's the ___post office?",
      'answerList': [
        {'answer': "most near", 'istrue': false},
        {'answer': "near", 'istrue': false},
        {'answer': "more near", 'istrue': false},
        {'answer': "nearest", 'istrue': true}
      ],
    },
    {
      'question': "6. You ______ better see a doctor.",
      'answerList': [
        {'answer': "did", 'istrue': false},
        {'answer': "would", 'istrue': false},
        {'answer': "should", 'istrue': false},
        {'answer': "had", 'istrue': true},
      ],
    },
    {
      'question': "7. Do you _____ chocolate milk?",
      'answerList': [
        {'answer': "like", 'istrue': true},
        {'answer': "likes", 'istrue': false},
        {'answer': "be like", 'istrue': false},
        {'answer': "will like", 'istrue': false}
      ],
    },
    {
      'question': "8. He ____not want to go \nto the movies.",
      'answerList': [
        {'answer': "do", 'istrue': false},
        {'answer': "does", 'istrue': true},
        {'answer': "is", 'istrue': false},
        {'answer': "was", 'istrue': false},
      ],
    },
    {
      'question': "9. It _____ a beautiful day today.",
      'answerList': [
        {'answer': "is", 'istrue': true},
        {'answer': "are", 'istrue': false},
        {'answer': "am", 'istrue': false},
        {'answer': "was", 'istrue': false},
      ],
    },
    {
      'question': "10. Have you visited London?" '____.' "",
      'answerList': [
        {'answer': "Not yet", 'istrue': false},
        {'answer': "Ever", 'istrue': false},
        {'answer': "Already", 'istrue': true},
        {'answer': "Not", 'istrue': false},
      ],
    },
  ];

  void _incrementCounter(bool answer) {
    if (answer) {
      _true_answer++;
    }
    setState(() {
      _quiz_num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: switchs ? Colors.black : Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                switchs = !switchs;
              });
            },
            icon: switchs
                ? const Icon(Icons.dark_mode_rounded)
                : const Icon(Icons.light_mode_rounded),
            color: switchs ? Colors.white : Colors.black,
          )
        ],
        elevation: 1,
        iconTheme: IconThemeData(color: switchs ? Colors.white : Colors.black),
        centerTitle: true,
        backgroundColor: switchs ? Colors.black : Colors.white,
        title: Text(
          'Quiz Time',
          style: TextStyle(
              color: switchs ? Colors.white : Colors.black,
              fontSize: 35,
              fontFamily: 'InriaSans'),
        ),
      ),
      body: _quiz_num < questionMap.length
          ? QuestionPage(switchs, questionMap[_quiz_num]['question'],
              questionMap[_quiz_num]['answerList'], _incrementCounter)
          : RestartPage(
              len: questionMap.length,
              trueanswer: _true_answer,
              switchs: switchs,
              elevatedButton: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _quiz_num = 0;
                    _true_answer = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: switchs ? Colors.white : Colors.black,
                    fixedSize: const Size(260, 60), // specify width, height
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      25,
                    ))),
                child: Center(
                  child: Text(
                    'Restart',
                    style: TextStyle(
                        fontFamily: 'InriaSans',
                        fontSize: 20,
                        color: switchs ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
    );
  }
}
