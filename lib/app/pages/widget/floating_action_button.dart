
import 'package:assignment/app/pages/controller/pages_controller.dart';
import 'package:flutter/material.dart';

// CustomFloatingActionButton is a StatelessWidget that uses PagesController for state management.
class CustomFloatingActionButton extends StatelessWidget{
  final PagesController controller;  // Controller to manage the state

  // Constructor to initialize the controller
  const CustomFloatingActionButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // onPressed calls the increment method from the controller
    onPressed: controller.increment, // Call increment method
    tooltip: 'Increment',
     child: const Icon(Icons.add),
      backgroundColor:  Colors.deepPurple.shade100,
      elevation: 5,

    );
  }
}