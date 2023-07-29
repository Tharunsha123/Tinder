// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/widgets.dart';

class EmailVerification extends StatelessWidget {
  final TabController tabController;
  const EmailVerification({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomTextHeader(
                  tabController: tabController,
                  text: 'Did You Get The Verification Code?'),
              SizedBox(
                height: 15,
              ),
              CustomTextFeild(
                  tabController: tabController, text: 'Enter Your Code'),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 2,
                selectedColor: Color.fromARGB(255, 230, 62, 40),
                unselectedColor: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(tabController: tabController, text: "NEXT STEP"),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
