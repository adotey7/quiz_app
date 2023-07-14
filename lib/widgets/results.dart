import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results(
      {required this.finalScore,
      required this.onPressed,
      required this.score,
      super.key});
  final String score;
  final String finalScore;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Total correct answers',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            score,
            style: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 11, 245, 209),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  40,
                ),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF6949FD).withOpacity(0.8),
                    const Color(0xFF6949FD),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Your final score is',
                    style: TextStyle(
                      fontSize: 27,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade400,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          '${finalScore}0',
                          style: const TextStyle(
                            fontSize: 100,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(
              height: 30,
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: const Color(0xFF6949FD),
                fixedSize: const Size(300, 70),
              ),
              icon: const Icon(Icons.rotate_right),
              label: const Text('Try Again'),
            ),
          )
        ],
      ),
    );
  }
}
