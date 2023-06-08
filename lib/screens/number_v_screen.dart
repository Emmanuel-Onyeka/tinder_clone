import 'package:flutter/material.dart';
import '../widget/phone_number.dart';
import '../widget/otp_verification.dart';

class NumVerifyScreen extends StatefulWidget {
  const NumVerifyScreen({Key? key}) : super(key: key);
  static const String routeName = '/number_v_screen';

  @override
  State<NumVerifyScreen> createState() => _NumVerifyScreenState();
}

class _NumVerifyScreenState extends State<NumVerifyScreen> {
  PageController? controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: PageView(
          onPageChanged: (value) {},
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            PhoneNumberVerification(controller!),
            OTPVerification(),
          ],
        ),
      ),
    );
  }
}
