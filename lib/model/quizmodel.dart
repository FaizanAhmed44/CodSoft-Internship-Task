class Product {
  int? _totalSize;

  late List<QuizModel> _products;
  List<QuizModel> get products => _products;

  Product({
    required totalSize,
  }) {
    this._totalSize = totalSize;
  }
  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];

    if (json['questions'] != null) {
      _products = <QuizModel>[];
      json['questions'].forEach((v) {
        _products!.add(QuizModel.fromJson(v));
      });
    }
  }
}

class QuizModel {
  int? id;
  String? question;

  String? option3;
  String? option1;
  String? option2;
  String? option4;
  String? ans;

  QuizModel({
    this.id,
    this.option3,
    this.option1,
    this.option2,
    this.option4,
    this.question,
    this.ans,
  });

  QuizModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    option1 = json['option1'];
    option2 = json['option2'];
    option3 = json['option3'];
    option4 = json['option4'];
    ans = json['ans'];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "question": this.question,
      "ans": this.ans,
      "option1": this.option1,
      "option2": this.option2,
      "option3": this.option3,
      "option4": this.option4,

      // "product":this.product!.toJson(),
    };
  }
}
