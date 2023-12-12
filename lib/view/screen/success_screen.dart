import 'package:alemeno_app/styles.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Success',
              style: h1.copyWith(
                fontSize: 22,
                letterSpacing: 0.2,
                fontWeight: FontWeight.w500,
              ),
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300]!,
                          offset: const Offset(0, 2),
                          blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/success.png', height: 300, width: 300),
                    //   const SizedBox(height: 20),
                    Text(
                      'Lab tests have been\nscheduled successfully, You\nwill recieve a mail of the same.',
                      style: h1.copyWith(
                          fontSize: 18,
                          color: Colors.grey[800],
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 20),

                    Text('11 Oct 2023 | 9 AM',
                        style: h1.copyWith(
                            fontSize: 14,
                            color: Colors.grey[500],
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
