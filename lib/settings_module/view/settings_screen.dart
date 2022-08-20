import 'package:flutter/material.dart';
import 'package:payment_application/settings_module/view/widgets/settings_sliver_app_bar_widget.dart';
import 'package:payment_application/settings_module/view/widgets/settings_tile_widget.dart';
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
