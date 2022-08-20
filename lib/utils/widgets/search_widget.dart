
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_application/utils/core/border_radius_constants.dart';
import 'package:payment_application/utils/core/color_constants.dart';
import 'package:payment_application/utils/widgets/search_screen_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      onTap: () {
        Get.to(() => const SearchScreen());
      },
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
    );
  }
}
