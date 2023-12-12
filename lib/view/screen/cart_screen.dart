import 'package:alemeno_app/controller/datetime_controller.dart';
import 'package:alemeno_app/styles.dart';
import 'package:alemeno_app/view/screen/date_screen.dart';
import 'package:alemeno_app/view/screen/success_screen.dart';
import 'package:alemeno_app/view/widets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  bool isHardCopy = false;
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
              Text(
                'Order review',
                style: h12.copyWith(
                  fontSize: 22,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 40,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[300]!,
                                  offset: const Offset(0, 2),
                                  blurRadius: 2)
                            ],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: const Center(
                            child: Text(
                          'Thyroid Profile',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Thyroid Profile',
                                  style: h1.copyWith(
                                      fontSize: 20,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w600),
                                ),
                                RichText(
                                    textAlign: TextAlign.end,
                                    text: TextSpan(
                                        text: '₹ 1000/-',
                                        style: h12.copyWith(
                                            fontSize: 22,
                                            color: secondaryColor),
                                        children: [
                                          TextSpan(
                                            text: '\n1400 ',
                                            style: h2.copyWith(
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey[600],
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                          )
                                        ])),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const ButtonWithIcon(
                              text: 'Remove',
                              isOutlined: true,
                              height: 40,
                              width: 140,
                              icon: CupertinoIcons.trash,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const ButtonWithIcon(
                              text: 'Upload Prescription (optional)',
                              isOutlined: true,
                              height: 40,
                              icon: Icons.file_upload_outlined,
                            )
                          ],
                        ),
                      )
                    ]),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DateScreen())),
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300]!,
                            offset: const Offset(0, 1),
                            blurRadius: 2)
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        size: 28,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 36,
                          child: TextField(
                              readOnly: true,
                              cursorHeight: 20,
                              cursorColor: primaryColor,
                              style: h2.copyWith(
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[600]),
                              decoration: InputDecoration(
                                hintText: context
                                            .read<DateTimeController>()
                                            .date ==
                                        ""
                                    ? "Select Date"
                                    : context.read<DateTimeController>().date,
                                hintStyle: h2.copyWith(
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[600]),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 0),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: primaryColor, width: 0.4),
                                    gapPadding: 0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 109, 102, 102),
                                        width: 0.4),
                                    gapPadding: 0),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300]!,
                          offset: const Offset(0, 1),
                          blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('M.R.P. Total'), Text('1400')],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Discount'), Text('400')],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount to be Paid',
                          style: h2.copyWith(
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '₹ 1000/-',
                          style: h2.copyWith(
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text('Total Savings',
                            style: h2.copyWith(
                                fontSize: 14,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600])),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          '₹ 400/-',
                          style: h2.copyWith(
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300]!,
                          offset: const Offset(0, 1),
                          blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              color: isHardCopy
                                  ? primaryColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(12)),
                          child: Transform.scale(
                            scale: 0.6,
                            child: Radio(
                                value: isHardCopy,
                                fillColor:
                                    MaterialStateProperty.all(Colors.grey),
                                groupValue: const [false, true],
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                onChanged: (val) {
                                  print(val);
                                  setState(() {
                                    isHardCopy = !isHardCopy;
                                  });
                                }),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        RichText(
                            text: TextSpan(
                                text: 'Hard copy of reports',
                                style: h1.copyWith(
                                    fontSize: 12,
                                    color: const Color.fromARGB(
                                        255, 146, 143, 143),
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold),
                                children: [
                              TextSpan(
                                text:
                                    '\nReports will be delivered within 2-4 working days. Hard \ncopy xharges are non-refundale once the reports have \nbeen dispatched.',
                                style: h1.copyWith(
                                    fontSize: 10,
                                    color: Colors.grey.withOpacity(0.8),
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]))
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Text(
                          '₹ 150 per person',
                          style: h1.copyWith(
                              fontSize: 10,
                              color: Colors.grey.withOpacity(0.8),
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(
                          flex: 4,
                        ),
                      ],
                    ),
                    SolidButton(
                      callback: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SuccessScreen()));
                      },
                      text: 'Schedule',
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
