class Recipe {
  final String title;
  final String photo;
  final String calories;
  final String time;
  final String description;

  List<Ingridient> ingridients;
  List<TutorialStep> tutorial;
  List<Review> reviews;

  Recipe(
      {required this.title,
      required this.photo,
      required this.calories,
      required this.time,
      required this.description,
      this.ingridients = const [],
      this.tutorial = const [],
      this.reviews = const []});

  factory Recipe.fromJson(Map<String, Object> json) {
    return Recipe(
      title: 'title',
      photo: 'photo',
      calories: 'calories',
      time: 'time',
      description: 'description',
    );
  }
}

class TutorialStep {
  String step;
  String description;
  TutorialStep({required this.step, required this.description});

  Map<String, Object> toMap() {
    return {
      'step': step,
      'description': description,
    };
  }

  factory TutorialStep.fromJson(Map<String, Object> json) => TutorialStep(
        step: 'step',
        description: 'description',
      );

  static List<TutorialStep> toList(List<Map<String, Object>> json) {
    return List.from(json)
        .map(
            (e) => TutorialStep(step: e['step'], description: e['description']))
        .toList();
  }
}

class Review {
  String username;
  String review;
  Review({required this.username, required this.review});

  factory Review.fromJson(Map<String, Object> json) => Review(
        review: 'review',
        username: 'username',
      );

  Map<String, Object> toMap() {
    return {
      'username': username,
      'review': review,
    };
  }

  static List<Review> toList(List<Map<String, Object>> json) {
    return List.from(json)
        .map((e) => Review(username: e['username'], review: e['review']))
        .toList();
  }
}

class Ingridient {
  String name;
  String size;

  Ingridient({required this.name, required this.size});
  factory Ingridient.fromJson(Map<String, Object> data) => Ingridient(
        name: 'name',
        size: 'size',
      );

  Map<String, Object> toMap() {
    return {
      'name': name,
      'size': size,
    };
  }

  static List<Ingridient> toList(List<Map<String, Object>> json) {
    return List.from(json)
        .map((e) => Ingridient(name: e['name'], size: e['size']))
        .toList();
  }
}
