import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_application/utils/core/border_radius_constants.dart';
import 'package:payment_application/utils/core/color_constants.dart';
import 'package:payment_application/utils/core/space_constants.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // floating: true,
      backgroundColor: kBackGrounGrey,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Icon(
            Icons.notifications,
            color: kGrey,
            size: 28,
          ),
        )
      ],
      expandedHeight: 470,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: kWhite,
                    child: CircleAvatar(
                      radius: 26,
                      backgroundColor: kBlack,
                      backgroundImage: AssetImage('assets/images/dp.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Hi Vanessa",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        Text("Here's your spending dashboard",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ),
              kHeight10,
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: kRadius10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 130,
                          width: 165,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "\$204.05",
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold),
                                ),
                                kHeight5,
                                Text(
                                  "Your Balance",
                                  style: TextStyle(fontSize: 18, color: kGrey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const VerticalDivider(
                          color: kBlack,
                        ),
                        SizedBox(
                          height: 130,
                          width: 165,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "30",
                                      style: TextStyle(
                                          fontSize: 45,
                                          color: kBlueColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.arrow_drop_down,
                                        size: 30, color: kBlueColor),
                                  ],
                                ),
                                kHeight5,
                                const Text(
                                  "Last Days",
                                  style: TextStyle(fontSize: 18, color: kGrey),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              kHeight10,
              const Text(
                "Send Again",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: names.length,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundColor: kWhite,
                              child: CircleAvatar(
                                radius: 39,
                                backgroundColor: kBlack,
                                backgroundImage: AssetImage(userImages[index]),
                              ),
                            ),
                            kHeight5,
                            Text(
                              names[index],
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: kGrey,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              subNames[index],
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: kGrey,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return kWidth10;
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final names = [
  "Johnny",
  "Gail ",
  "Vanessa ",
  "Delores ",
  "Rochel ",
  "Kathrin ",
  "Johnny ",
  "Gail ",
  "Vanessa ",
  "Delores ",
  "Rochel ",
];
final subNames = [
  "Chimpo",
  "Mcnett",
  "Kopp",
  "Rathbun",
  "Deshong",
  "Mccollum",
  "Chimpo",
  "Mcnett",
  "Kopp",
  "Rathbun",
  "Deshong",
];
final userImages = [
  "assets/images/1.jpg",
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
  "assets/images/5.jpg",
  "assets/images/6.jpg",
  "assets/images/7.jpg",
  "assets/images/1.jpg",
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
];
