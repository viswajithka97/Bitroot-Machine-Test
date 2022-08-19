import 'package:flutter/material.dart';
import 'package:payment_application/utils/core/color_constants.dart';
import 'package:payment_application/utils/core/space_constants.dart';

class SettingsSliverAppBarWidget extends StatelessWidget {
  const SettingsSliverAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      backgroundColor: kBackGrounGrey,
      actions: [
        TextButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Text(
              "Log Out",
              style: TextStyle(
                  color: kBlueColor, fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Column(
            children: const [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 54,
                  backgroundImage: AssetImage('assets/images/dp.jpg'),
                ),
              ),
              kHeight10,
              Text(
                'Mae Jamison',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              Text(
                'maej@gmail.com',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
