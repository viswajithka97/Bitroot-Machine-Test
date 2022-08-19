import 'package:flutter/material.dart';
import 'package:payment_application/settings_module/view/widgets/settings_sliver_app_bar_widget.dart';
import 'package:payment_application/utils/core/color_constants.dart';
import 'package:payment_application/utils/core/space_constants.dart';
import 'package:payment_application/utils/widgets/search_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SettingsSliverAppBarWidget(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
              child: Column(
                children: const [
                  kHeight20,
                  SearchWidget(),
                  kHeight20,
                  SettingsTileWidget(
                    icon: Icons.person,
                    title: 'Personal Info',
                  ),
                  SettingsTileWidget(
                      icon: Icons.qr_code_scanner_rounded, title: "My QR Code"),
                  SettingsTileWidget(
                      icon: Icons.apartment, title: "Banks and Cards"),
                  SettingsTileWidget(
                      icon: Icons.payments_rounded,
                      title: "Payment Preferences"),
                  SettingsTileWidget(
                      icon: Icons.refresh, title: "Automatic Payments"),
                  SettingsTileWidget(
                      icon: Icons.login_outlined, title: "Login and Security"),
                  SettingsTileWidget(
                      icon: Icons.notifications, title: "Notifications"),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

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
