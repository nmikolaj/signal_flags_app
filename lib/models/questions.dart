class Question {
  final int id, answer;
  final String question;
  final List<String> answers;

  Question({required this.id, required this.question, required this.answer, required this.answers}); // required for null exception
}

const List questions = [
  {
    "id": 1,
    "question":
        "Alpha",
    "answers": ['A', 'B', 'C', 'D'],
    "correctAnswer": 1,
  },
  {
    "id": 2,
    "question": "Bravo",
    "answers": ['A', 'B', 'C', 'D'],
    "correctAnswer": 3,
  },
  {
    "id": 3,
    "question":"Charlie",
    "answers": ['A', 'B', 'C', 'D'],
    "correctAnswer": 1,
  },
];