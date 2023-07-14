import 'package:flutter/material.dart';

class TextWithNumbers extends StatelessWidget {
  const TextWithNumbers({required this.text, required this.number, super.key});
  final String text;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: const Color(0xFF6949FD),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: FittedBox(
                child: Text(
                  number,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
