import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_application/bottom_navigation_modules/controller/bottom_nav_controller.dart';
import 'package:payment_application/dashboard_module/view/widget/text_widget.dart';
import 'package:payment_application/utils/core/color_constants.dart';
import 'package:payment_application/utils/core/space_constants.dart';
import 'package:payment_application/utils/widgets/search_widget.dart';

class DashboardBottomSection extends StatelessWidget {
  DashboardBottomSection({
    Key? key,
  }) : super(key: key);

  final controller = Get.find<BottomNavController>();
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: [
        kHeight10,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: SearchWidget(),
        ),
        kHeight10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
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
        ),
        // kHeight20,
        ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            shrinkWrap: true,
            separatorBuilder: (context, index) => kHeight10,
            itemBuilder: (context, index) {
              final data = controller.data[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHeight10,
                      TextRowWidget(
                          firstText: data.productName,
                          secondText: '\$${data.productPrice}'),
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
                      DashBoardTextWidget(
                        text: "Return Time Remaining ${data.returnTime}",
                      ),
                      kHeight5,
                      DashBoardTextWidget(
                        text: data.address,
                      ),
                      kHeight10,
                      Divider(
                        color: Colors.grey[300],
                        thickness: 1,
                      ),
                    ],
                  ),
                ),
              );
            }),
      ],
    ));
  }
}
