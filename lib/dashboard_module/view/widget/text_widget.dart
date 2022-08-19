import 'package:flutter/cupertino.dart';
import 'package:payment_application/utils/core/color_constants.dart';

class TextRowWidget extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TextRowWidget({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: const TextStyle(
            color: kBlack,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          secondText,
          style: const TextStyle(
            color: kBlack,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class DashBoardTextWidget extends StatelessWidget {
  final String text;

  const DashBoardTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.w400, color: kGrey, fontSize: 20),
    );
  }
}
