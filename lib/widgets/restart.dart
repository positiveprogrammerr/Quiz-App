// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RestartPage extends StatefulWidget {
  RestartPage({
    Key? key,
    required this.len,
    required this.trueanswer,
    required this.switchs,
    required this.elevatedButton,
  }) : super(key: key);
  bool switchs;
  final int len;
  int trueanswer;
  ElevatedButton elevatedButton;
  @override
  State<RestartPage> createState() => _RestartPageState();
}

class _RestartPageState extends State<RestartPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            '${widget.trueanswer}/${widget.len}',
            style: TextStyle(
                fontFamily: 'InriaSans',
                fontSize: 40,
                color: widget.switchs ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.elevatedButton,
          ],
        ),
        const SizedBox(height: 110)
      ],
    );
  }
}
