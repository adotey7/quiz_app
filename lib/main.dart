import 'package:flutter/material.dart';
import './dummy_questions.dart';
import './widgets/text_numbers.dart';
import './widgets/styled_button.dart';
import './widgets/results.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Nunito',
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1F1147),
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 11, 245, 209),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        scaffoldBackgroundColor: Color(0xFF1F1147),
        textTheme: TextTheme(
          bodySmall: TextStyle(
            color: Color.fromARGB(255, 11, 245, 209),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  var totalScore = 0;
  var _pickedAnswer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Question'),
        elevation: 0,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(
                0XFF361E70,
              ),
            ),
            child: const Icon(Icons.more_horiz_rounded),
          ),
        ],
      ),
      body: DUMMY_QUESTIONS.length != _index
          ? SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '${(int.parse(_index.toString()) + 1).toString().padLeft(2, '0')}/${(DUMMY_QUESTIONS.length.toString().padLeft(2, '0'))}',
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      DUMMY_QUESTIONS[_index].question,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        height: MediaQuery.of(context).size.height * 0.42,
                        DUMMY_QUESTIONS[_index].imageUrl,
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                    color: Color.fromARGB(255, 11, 245, 209),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () {
                                  _pickedAnswer =
                                      DUMMY_QUESTIONS[_index].answers[index];
                                  print(_pickedAnswer);
                                  if (_pickedAnswer ==
                                      DUMMY_QUESTIONS[_index].answer) {
                                    totalScore += 1;
                                  }
                                  setState(() {
                                    _index += 1;
                                  });
                                },
                                child: TextWithNumbers(
                                    text:
                                        DUMMY_QUESTIONS[_index].answers[index],
                                    number: index.toString())),
                          );
                        },
                        itemCount: DUMMY_QUESTIONS[_index].answers.length,
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     StyledButton(title: 'Previous', onPressed: () {}),
                    //     StyledButton(title: 'Next', onPressed: () {}),
                    //   ],
                    // ),
                  ],
                ),
              ),
            )
          : Results(
              score: 'You scored $totalScore out of ${DUMMY_QUESTIONS.length}',
              finalScore: totalScore.toString(),
              onPressed: () {
                setState(() {
                  _index = 0;
                  totalScore = 0;
                });
              },
            ),
    );
  }
}
