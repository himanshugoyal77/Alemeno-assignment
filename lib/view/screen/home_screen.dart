import 'package:alemeno_app/controller/cart_controller.dart';
import 'package:alemeno_app/model/test_model.dart';
import 'package:alemeno_app/view/screen/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:alemeno_app/styles.dart';
import 'package:alemeno_app/view/widets/button.dart';
import 'package:provider/provider.dart';
import 'package:alemeno_app/view/widets/test_lab_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartController>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('ALEMENO', style: h1),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          CircleAvatar(
              radius: 8,
              backgroundColor: secondaryColor,
              child: Center(
                  child: Text(
                      context.watch<CartController>().cartCount.toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700)))),
          const SizedBox(width: 2),
          GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyCartScreen())),
              child: const FaIcon(FontAwesomeIcons.cartShopping, size: 16)),
          const SizedBox(width: 20)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Popular lab tests', style: h2),
                  const Spacer(),
                  Text('View more', style: link),
                  const SizedBox(width: 5),
                  FaIcon(
                    FontAwesomeIcons.arrowRight,
                    size: 12,
                    color: primaryColor,
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              GridView.count(
                childAspectRatio: 0.7,
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                scrollDirection: Axis.vertical,
                clipBehavior: Clip.none,
                children: [
                  LabTestCard(
                    testModel: TestModel(
                        originalPrice: 1400,
                        discountPrice: 1000,
                        count: 3,
                        name: 'Thyroid Profile'),
                  ),
                  LabTestCard(
                    testModel: TestModel(
                        originalPrice: 1000,
                        discountPrice: 600,
                        count: 4,
                        name: 'Iron Study Test'),
                  ),
                  LabTestCard(
                    testModel: TestModel(
                        originalPrice: 1400,
                        discountPrice: 1000,
                        count: 3,
                        name: 'Thyroid Profile'),
                  ),
                  LabTestCard(
                    testModel: TestModel(
                        originalPrice: 1000,
                        discountPrice: 600,
                        count: 4,
                        name: 'Iron Study Test'),
                  )
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Text('Popular Packages', style: h2),
              const SizedBox(
                height: 12,
              ),
              Container(
                  padding: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.withOpacity(0.2)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 10,
                            offset: const Offset(0, 5))
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                              radius: 35,
                              backgroundColor: secondaryColor.withOpacity(0.3),
                              child: Icon(
                                Icons.medication_outlined,
                                color: primaryColor,
                                size: 40,
                              )),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 12),
                            decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Row(
                              children: [
                                Icon(
                                  CupertinoIcons.checkmark_shield_fill,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Safe',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Full Body Checkup',
                        style: h1.copyWith(
                            fontSize: 24,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Includes 92 tests',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        '\u2022 Blood Glucose Fasting',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Text(
                        '\u2022 Liver Function Test',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'View more',
                        style: link.copyWith(color: secondaryColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("₹ 2000/-",
                              style: h12.copyWith(
                                  fontSize: 24, color: secondaryColor)),
                          AddToCartButton(
                            width: size.width * 0.4,
                            radius: 2,
                            height: 40,
                            text: 'Add to cart',
                            isOutlined: true,
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
