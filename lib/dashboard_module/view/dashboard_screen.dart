import 'package:flutter/material.dart';
import 'package:payment_application/dashboard_module/view/widget/dashboard_bottom_section.dart';
import 'package:payment_application/dashboard_module/view/widget/sliver_app_bar_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBarWidget(),
          DashboardBottomSection(),
        ],
      ),
    );
  }
}
