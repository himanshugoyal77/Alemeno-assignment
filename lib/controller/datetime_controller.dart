import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class DateTimeController extends ChangeNotifier {
  String formatDate(DateTime date) => DateFormat("EEE, MMM d").format(date);
  String time = "";
  String date = "";

  void setTime(String time) {
    this.time = time;
    notifyListeners();
    print(this.time);
  }

  void setDate(DateTime date) {
    this.date = formatDate(date);
    print(this.date);
    notifyListeners();
  }
}
