// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/widgets.dart';

class Demograpy extends StatelessWidget {
  final TabController tabController;
  const Demograpy({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextHeader(
                  tabController: tabController, text: 'What\' is Your Gender?'),
              SizedBox(
                height: 10,
              ),
              CustomCheckBox(tabController: tabController, text: 'MALE'),
              CustomCheckBox(tabController: tabController, text: 'FEMALE'),
              SizedBox(
                height: 100,
              ),
              CustomTextHeader(
                  tabController: tabController, text: 'What\' is Your Age?'),
              CustomTextFeild(
                  tabController: tabController, text: 'Enter Your Age'),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 3,
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
  }
}
