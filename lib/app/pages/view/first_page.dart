import 'package:assignment/app/pages/view/second_page.dart';
import 'package:assignment/app/pages/widget/floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/pages_controller.dart';

// FirstPage is a GetView that uses PagesController for state management.
class FirstPage extends GetView<PagesController> {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar with centered title 'First Page' and background color.
        title: const Center(child: Text('First Page', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400))),
          backgroundColor: Colors.deepPurple.shade100
      ),
      body: Column(
        children: [
          Obx(() {
            // Display the last number in the list or a message if the list is empty.
            String currentNumber = controller.numbers.isNotEmpty
                ? '${controller.numbers.last}'
                : 'No numbers in the list';
            return Text(
              currentNumber,
              style: const TextStyle(fontSize: 30),
            );
          }),
          Expanded(
            child: Obx(() {
              // ListView.builder to display the list of numbers.
              return ListView.builder(
                itemCount: controller.numbers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${controller.numbers[index]}', style: const TextStyle(fontSize: 16),),
                  );
                },
              );
            }),
          ),
          ElevatedButton(
            // Navigate to the SecondPage when the button is pressed.
            onPressed: () {
              Get.to(() => const SecondPage(),
              );
            },
            child: const Text('Go to Second Page'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple.shade50,
              foregroundColor: Colors.black,
              shadowColor: Colors.black,
              elevation: 5,
              textStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              )
            ),
          ),
          const SizedBox(height: 15,)
        ],
      ),
      // CustomFloatingActionButton with PagesController.
      floatingActionButton: CustomFloatingActionButton(controller: controller),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );

  }
}
