class QuestionModel {
  String questions;
  int id, answer;
  List<String> options;
  QuestionModel({
    required this.id,
    required this.questions,
    required this.answer,
    required this.options,
  });
}

const List question_list = [
  {
    'id': 1,
    'questions': 'What is the capital of France?',
    'options': ['Berlin', 'Madrid', 'Paris', 'Rome'],
    'answer_index': 2 // The correct answer is 'Paris'
  },
  {
    'id': 2,
    'questions': 'Which planet is known as the Red Planet?',
    'options': ['Mars', 'Venus', 'Earth', 'Jupiter'],
    'answer_index': 0 // The correct answer is 'Mars'
  },
  {
    'id': 3,
    'questions': 'Who wrote the play "Romeo and Juliet"?',
    'options': [
      'William Shakespeare',
      'Jane Austen',
      'Charles Dickens',
      'Mark Twain'
    ],
    'answer_index': 0 // The correct answer is 'William Shakespeare'
  },
  {
    'id': 4,
    'questions': 'What is the largest mammal in the world?',
    'options': ['Elephant', 'Blue Whale', 'Giraffe', 'Hippopotamus'],
    'answer_index': 1 // The correct answer is 'Blue Whale'
  },
  {
    'id': 5,
    'questions':
        'In which year did Christopher Columbus first arrive in the Americas?',
    'options': ['1492', '1620', '1776', '1812'],
    'answer_index': 0 //The correct answer is '1492'
  },
  {
    'id': 6,
    'questions': 'What is the chemical symbol for gold?',
    'options': ['Au', 'Ag', 'Fe', 'Cu'],
    'answer_index': 0 // The correct answer is 'Au'
  },
];
