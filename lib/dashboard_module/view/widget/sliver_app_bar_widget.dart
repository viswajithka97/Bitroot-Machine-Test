import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_application/bottom_navigation_modules/controller/bottom_nav_controller.dart';
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
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0, top: 15),
          child: Stack(
            children: [
              const Icon(
                Icons.notifications,
                color: kGrey,
                size: 28,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
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
                  height: 140,
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
                      itemCount: 11,
                      itemBuilder: (context, index) {
                        final controller = Get.find<BottomNavController>();
                        final data = controller.data[index];

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundColor: kWhite,
                              child: CircleAvatar(
                                radius: 39,
                                backgroundColor: kBlack,
                                backgroundImage: AssetImage(data.image),
                              ),
                            ),
                            kHeight5,
                            Text(
                              data.name,
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: kGrey,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              data.subName,
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

final productName = [
  "Apple MacBook Pro 16' - Silver",
  "Ueno Coffee Filters",
  "Playstation 5",
  "Apple Watch Series 6",
  "Apple AirPods Pro",
  "Apple iPhone 12 Pro Max",
  "Samsung Galaxy S21 Ultra",
  "Mechanical Keyboard",
  "Alienware Laptop",
  "Sony Bravia 4K TV",
  "Sony Home Theater",
];
final price = [
  "3234.03",
  "5.03",
  "499.99",
  "399.99",
  "249.99",
  "1099.99",
  "1099.99",
  "199.99",
  "1999.99",
  "499.99",
  "499.99",
];
final store = [
  "Apple Store",
  "Target",
  "Amazon",
  "WallMart",
  "Apple Store",
  "Apple Store",
  "Amazon",
  "Target",
  "WallMart",
  "Amazon",
  "Target",
];
final returnTime = [
  "2 Weeks",
  '3 Week',
  '4 Days',
  '5 Days',
  '6 Days',
  '7 Days',
  '8 Days',
  '9 Days',
  '10 Days',
  '11 Days',
  '12 Days',
];
final deliveryAddress = [
  "1342 Colorado Street, Suite  32 - 92003",
  "1234, Main Street, New York, NY 10001",
  "1342 Colorado Street, Suite  32 - 92003",
  "1234, Main Street, New York, NY 10001",
  "1342 Colorado Street, Suite  32 - 92003",
  "1234, Main Street, New York, NY 10001",
  "1234, Main Street, New York, NY 10001",
  "1342 Colorado Street, Suite  32 - 92003",
  "1234, Main Street, New York, NY 10001",
  "1342 Colorado Street, Suite  32 - 92003",
  "1234, Main Street, New York, NY 10001",
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
