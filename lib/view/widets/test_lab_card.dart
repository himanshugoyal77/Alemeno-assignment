import 'package:alemeno_app/controller/cart_controller.dart';
import 'package:alemeno_app/model/test_model.dart';
import 'package:alemeno_app/styles.dart';
import 'package:alemeno_app/view/widets/button.dart';
import 'package:alemeno_app/view/widets/shield_icon.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

class LabTestCard extends StatelessWidget {
  final TestModel testModel;

  const LabTestCard({
    required this.testModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey[300]!,
          ),
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
            child: Center(
                child: Text(
              testModel.name,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w700),
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Includes ${testModel.count} tests',
                        style: h2.copyWith(
                          fontSize: 13,
                        )),
                    const ShieldIcon()
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text('Get reports in 24 hours',
                    style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 0,
                      color: Colors.grey[700],
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('₹ ${testModel.discountPrice}', style: h12),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(testModel.discountPrice.toString(),
                        style: TextStyle(
                            fontSize: 9,
                            letterSpacing: 0,
                            color: Colors.grey[700],
                            decoration: TextDecoration.lineThrough)),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                AddToCartButton(
                  text: 'Add to cart',
                  testModel: testModel,
                ),
                const AddToCartButton(
                  text: 'View details',
                  isOutlined: true,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
