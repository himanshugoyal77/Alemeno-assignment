import 'package:alemeno_app/controller/datetime_controller.dart';
import 'package:alemeno_app/styles.dart';
import 'package:alemeno_app/view/widets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List<Map<String, dynamic>> time = [
  {"time": "08:00 AM"},
  {"time": "09:00 AM"},
  {"time": "10:00 AM"},
  {"time": "11:00 AM"},
  {"time": "12:00 PM"},
  {"time": "01:00 PM"},
  {"time": "02:00 PM"},
  {"time": "03:00 PM"},
  {"time": "04:00 PM"},
  {"time": "05:00 PM"},
  {"time": "06:00 PM"},
  {"time": "07:00 PM"}
];

class DateScreen extends StatefulWidget {
  const DateScreen({super.key});

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  String selectedTime = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              size: 26,
            ),
          ),
          title: Text(
            'My Cart',
            style: h1.copyWith(
              fontSize: 22,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Select Date',
                  style: h1.copyWith(
                    fontSize: 18,
                    letterSpacing: 0.2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                CalendarDatePicker(
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now().subtract(const Duration(days: 5)),
                    lastDate: DateTime(2044),
                    initialCalendarMode: DatePickerMode.day,
                    onDateChanged: (newDate) {
                      context.read<DateTimeController>().setDate(newDate);
                    }),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Select Time',
                  style: h1.copyWith(
                    fontSize: 18,
                    letterSpacing: 0.2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2.5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  shrinkWrap: true,
                  children: time
                      .map(
                        (e) => InkWell(
                          onTap: () {
                            context
                                .read<DateTimeController>()
                                .setTime(e["time"] as String);
                            setState(() {
                              selectedTime = e["time"] as String;
                            });
                          },
                          child: Chip(
                            backgroundColor: selectedTime != e["time"]
                                ? Colors.transparent
                                : primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: selectedTime != e["time"]
                                    ? Colors.grey[400]!
                                    : primaryColor,
                              ),
                            ),
                            labelPadding: const EdgeInsets.all(0),
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            visualDensity: VisualDensity.compact,
                            label: Center(
                              child: Text(
                                e['time'] as String,
                                style: h1.copyWith(
                                  fontSize: 14,
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w500,
                                  color: selectedTime != e["time"]
                                      ? Colors.grey[400]
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                SolidButton(
                    callback: () {
                      Navigator.pop(context);
                    },
                    text: 'Confirm',
                    height: 45),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
