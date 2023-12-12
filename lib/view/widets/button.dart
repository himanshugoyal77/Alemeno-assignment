import 'package:alemeno_app/controller/cart_controller.dart';
import 'package:alemeno_app/model/test_model.dart';
import 'package:alemeno_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class AddToCartButton extends StatefulWidget {
  final bool isOutlined;
  final String text;
  final double width;
  final double radius;
  final double height;
  final TestModel? testModel;
  const AddToCartButton(
      {super.key,
      this.testModel,
      this.height = 34,
      this.radius = 10,
      this.width = double.infinity,
      this.isOutlined = false,
      required this.text});

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<CartController>().addToCart(widget.testModel!);
        setState(() {
          isAdded = !isAdded;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(top: 4),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          border: widget.isOutlined
              ? Border.all(color: primaryColor, width: 1)
              : Border.all(color: Colors.white, width: 1),
          color: !widget.isOutlined
              ? isAdded
                  ? secondaryColor
                  : primaryColor.withOpacity(0.9)
              : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
        ),
        child: Center(
          child: Text(widget.text,
              style: h2.copyWith(
                  color: widget.isOutlined ? primaryColor : Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 12)),
        ),
      ),
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  final bool isOutlined;
  final String text;
  final double width;
  final double height;
  final IconData icon;
  const ButtonWithIcon(
      {super.key,
      required this.icon,
      this.height = 34,
      this.width = double.infinity,
      this.isOutlined = false,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      //height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor, width: 2.3),
        color: !isOutlined ? primaryColor.withOpacity(0.9) : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          FaIcon(
            icon,
            size: 20,
            color: primaryColor,
          ),
          const SizedBox(width: 12),
          Text(text,
              style: h2.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: text.length > 10 ? 14 : 15)),
        ],
      ),
    );
  }
}

class SolidButton extends StatelessWidget {
  final String text;
  final double height;
  final void Function()? callback;
  const SolidButton({
    required this.callback,
    this.height = 40,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        margin: const EdgeInsets.only(top: 12),
        height: height,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            text,
            style: h1.copyWith(
                fontSize: 14,
                color: Colors.white,
                letterSpacing: 0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
