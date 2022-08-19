import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_application/dashboard_module/view/widget/text_widget.dart';
import 'package:payment_application/utils/core/border_radius_constants.dart';
import 'package:payment_application/utils/core/color_constants.dart';
import 'package:payment_application/utils/core/space_constants.dart';

class DashboardBottomSection extends StatelessWidget {
  const DashboardBottomSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            shrinkWrap: true,
            separatorBuilder: (context, index) => kHeight10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight10,
                      CupertinoTextField(
                        placeholder: 'Search Transactions',
                        placeholderStyle: const TextStyle(color: kGrey),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        prefix: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: kBlueColor,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(158, 224, 224, 224),
                          borderRadius: kRadius10,
                        ),
                      ),
                      kHeight20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Your Activity',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.notes_rounded,
                            size: 35,
                            color: kBlueColor,
                          )
                        ],
                      ),
                      kHeight20,
                      const TextRowWidget(
                          firstText: "Apple Macbook Pro 16' - Silver",
                          secondText: '\$3,234.03'),
                      kHeight5,
                      const Text(
                        "Apple Store",
                        style: TextStyle(
                          color: kBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      kHeight5,
                      const DashBoardTextWidget(
                        text: "Return Time Remaining 2 Weeks",
                      ),
                      const DashBoardTextWidget(
                        text: "1342 Colorado Street, Suite  32 - 92003",
                      ),
                      kHeight10,
                      Divider(
                        color: Colors.grey[300],
                        thickness: 1,
                      ),
                      kHeight10,
                      const TextRowWidget(
                          firstText: "Ueno Coffee Filters",
                          secondText: "\$5.03"),
                      kHeight10,
                      const Text(
                        "Apple Store",
                        style: TextStyle(
                          color: kBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
