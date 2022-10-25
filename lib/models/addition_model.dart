class AdditionModel {
  final String question;
  final String answer;

  const AdditionModel(
      this.question,
      this.answer
      );

  factory AdditionModel.fromJson(Map<String, dynamic> json) {
    return AdditionModel(
      json['question'] as String,
      json['answer'] as String,
    );
  }
}
