void main() {

  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];
  Map<String, double> studentAverages = {};

  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);

    int total = 0;
    for (int score in scores) {
      total += score;
    }

    double average = total / scores.length;
    double roundedAvg = double.parse(average.toStringAsFixed(2));

    studentAverages[name] = roundedAvg;
  }

  List<MapEntry<String, double>> sortedList = studentAverages.entries.toList();
  sortedList.sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedAverages = {};
  for (var entry in sortedList) {
    sortedAverages[entry.key] = entry.value;
  }

  print(sortedAverages);
}
