import './models/question.dart';

const DUMMY_QUESTIONS = [
  Question(
    question: 'Which is the planet nearest to the sun?',
    answer: 'Mercury',
    imageUrl: 'assets/images/space1.jpg',
    answers: ['Earth', 'Mars', 'Mercury', 'Saturn'],
  ),
  Question(
    question: 'Which is the planet farthest to the sun?',
    answer: 'Neptune',
    imageUrl: 'assets/images/space1.jpg',
    answers: ['Uranus', 'Jupiter', 'Mercury', 'Neptune'],
  ),
  Question(
    question: '________ is the hottest planet in our solar system.',
    answer: 'Venus',
    imageUrl: 'assets/images/space2.png',
    answers: ['Mercury', 'Venus', 'Jupiter', 'Earth'],
  ),
  Question(
    question: '________ is the largest planet in our solar system.',
    answer: 'Jupiter',
    imageUrl: 'assets/images/space1.jpg',
    answers: ['Earth', 'Mars', 'Jupiter', 'Saturn'],
  ),
  Question(
    question: 'Which is the smallest planet in our solar system?',
    answer: 'Mercury',
    imageUrl: 'assets/images/space4.jpg',
    answers: ['Uranus', 'Mars', 'Mercury', 'Saturn'],
  ),
  Question(
    question: 'Which of these is the coldest planet in our solar system?',
    answer: 'Neptune',
    imageUrl: 'assets/images/space3.jpg',
    answers: ['Uranus', 'Neptune', 'Jupiter', 'Saturn'],
  ),
  Question(
    question: 'The planet(s) with rings around is/are:',
    answer: 'All of the mentioned',
    imageUrl: 'assets/images/space1.jpg',
    answers: ['Saturn', 'Jupiter', 'Uranus', 'All of the mentioned'],
  ),
  Question(
    question: '______ is called the "Red Planet" in our solar system.',
    answer: 'Mars',
    imageUrl: 'assets/images/space2.png',
    answers: ['Mercury', 'Venus', 'Earth', 'Mars'],
  ),
  Question(
    question:
        'Arrange the following planets in ascending order of their distance from the sun.\nI. Jupiter II. Venus III. Mercury IV. Mars V. Earth',
    answer: 'III,II,V,IV,I',
    imageUrl: 'assets/images/space3.jpg',
    answers: [
      'I,V,IV,II,III',
      'III,II,V,IV,I',
      'III,II,IV,V,I',
      'I,IV,V,II,III'
    ],
  ),
  Question(
    question: '______ is the third planet from the sun.',
    answer: 'Earth',
    imageUrl: 'assets/images/space1.jpg',
    answers: ['Mars', 'Earth', 'Jupiter', 'Saturn'],
  ),
];
