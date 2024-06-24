class Question {
  final int id, answer;
  final String question;
  final List<String> answers;
  final bool isFlagQuestion;
  final String? flagImage;
  final List<String> flags;

  Question(
      { // required for null exception
      required this.id,
      required this.question,
      required this.answer,
      required this.answers,
      required this.isFlagQuestion,
      this.flagImage, // nullable for questions with text
      required this.flags}); 
}

