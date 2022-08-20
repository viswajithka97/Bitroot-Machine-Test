import 'package:flutter/material.dart';
import 'package:payment_application/utils/core/color_constants.dart';
import 'package:payment_application/utils/core/space_constants.dart';

class SettingsTileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const SettingsTileWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: kGrey,
                ),
                kWidth10,
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: kBlueColor,
            ),
          ],
        ),
        kHeight10,
        Divider(
          color: Colors.grey[300],
          thickness: 1,
        )
      ],
    );
  }
}
