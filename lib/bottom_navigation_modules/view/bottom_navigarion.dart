import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_application/bottom_navigation_modules/controller/bottom_nav_controller.dart';
import 'package:payment_application/bottom_navigation_modules/view/widgets/bottom_navigation_widget.dart';
import 'package:payment_application/dashboard_module/view/dashboard_screen.dart';
import 'package:payment_application/scan_code_module/view/scan_code_screen.dart';
import 'package:payment_application/send_request_module/view/send_request_screen.dart';
import 'package:payment_application/settings_module/view/settings_screen.dart';

class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({Key? key}) : super(key: key);

  final _pages = [
    const DashboardScreen(),
    const ScanCodeScreen(),
    const SendRequestScreen(),
    const SettingsScreen(),
  ];
  final controller = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangedNotifier,
          builder: (BuildContext context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
