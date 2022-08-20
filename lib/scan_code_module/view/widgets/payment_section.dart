import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:payment_application/utils/core/border_radius_constants.dart';
import 'package:payment_application/utils/core/color_constants.dart';
import 'package:payment_application/utils/core/space_constants.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AvatarGlow(
          glowColor: kWhite,
          animate: true,
          endRadius: 200,
          shape: BoxShape.circle,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          child: Material(
            elevation: 10.0,
            color: Colors.transparent,
            shape: CircleBorder(),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: kWhite,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/dp.jpg',
                  // height: 60,
                ),
                radius: 60.0,
              ),
            ),
          ),
        ),
        kHeight30,
        const Text(
          "Paying",
          style: TextStyle(
              color: kWhite, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        kHeight5,
        const Text(
          "Marcus Cabatappi",
          style: TextStyle(
              color: kWhite, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        kHeight30,
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: kRadius10),
          color: kWhite,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
            child: Text(
              "Cancel Payment",
              style: TextStyle(
                color: kBlack,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
