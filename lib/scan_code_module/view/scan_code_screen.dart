import 'package:flutter/material.dart';
import 'package:payment_application/scan_code_module/view/widgets/payment_section.dart';
import 'package:payment_application/utils/core/color_constants.dart';

class ScanCodeScreen extends StatelessWidget {
  const ScanCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(child: PaymentSection()),
    );
  }
}
