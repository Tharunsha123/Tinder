// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../widgets/widgets.dart';

class Picture extends StatelessWidget {
  final TabController tabController;
  const Picture({
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
                  tabController: tabController, text: 'Add 2 or more Pictures'),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomImageContainer(
                    tabController: tabController,
                  ),
                  CustomImageContainer(
                    tabController: tabController,
                  ),
                  CustomImageContainer(
                    tabController: tabController,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomImageContainer(
                    tabController: tabController,
                  ),
                  CustomImageContainer(
                    tabController: tabController,
                  ),
                  CustomImageContainer(
                    tabController: tabController,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              StepProgressIndicator(
                totalSteps: 6,
                currentStep: 4,
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
