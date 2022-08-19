import 'package:flutter/material.dart';
import 'package:payment_application/utils/core/color_constants.dart';

ValueNotifier<int> indexChangedNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangedNotifier,
      builder: (BuildContext context, int newIndex, _) {
        return BottomNavigationBar(
          onTap: (index) => indexChangedNotifier.value = index,
          type: BottomNavigationBarType.fixed,
          currentIndex: newIndex,
          selectedItemColor: kBlueColor,
          unselectedItemColor: kGrey,
          backgroundColor: kWhite,
          selectedFontSize: 12,
          iconSize: 27,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "DashBoard",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner_rounded),
              label: "Scan Reciept",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.payments_rounded),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Settings",
            ),
          ],
        );
      },
    );
  }
}
