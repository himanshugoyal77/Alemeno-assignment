import 'package:alemeno_app/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShieldIcon extends StatelessWidget {
  const ShieldIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(5)),
      child: const Icon(
        CupertinoIcons.checkmark_shield_fill,
        color: Colors.white,
        size: 16,
      ),
    );
  }
}
