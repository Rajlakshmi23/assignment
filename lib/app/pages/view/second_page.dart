  import 'package:assignment/app/pages/controller/pages_controller.dart';
  import 'package:assignment/app/pages/widget/floating_action_button.dart';
  import 'package:flutter/material.dart';
  import 'package:get/get.dart';

  // SecondPage is a GetView that uses PagesController for state management.
  class SecondPage extends GetView<PagesController>{
  const SecondPage({super.key});

    @override
    Widget build(BuildContext  context){
      return Scaffold(
        appBar: AppBar(
          // AppBar with title 'Second Page' and background color.
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.of(context).pop(); // Go back to the previous screen
            },
          ),
          title: const Row(
            // Row widget to align the title text
            children: [
              SizedBox(width: 55),
              Center(
                child: Text(
                  'Second Page',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.deepPurple.shade100, // Background color of the AppBar
        ),
        body: Dismissible(
          key: const Key('dismiss_key'), // Unique key for the Dismissible widget
          direction: DismissDirection.startToEnd,
          onDismissed: (direction) {
            Navigator.of(context).pop(); // Go back to the previous screen on swipe
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100, // Height for the horizontal ListView
                  child: Obx(() {
                    // ListView.builder to display the list of numbers horizontally.
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.numbers.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            '${controller.numbers[index]}',
                            style: const TextStyle(fontSize: 16), // Adjust text style as needed
                          ),
                        );
                      },
                    );
                  }),
                ),
                const SizedBox(height: 200,),
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
          
              ],
            ),
          ),
        ),
        // CustomFloatingActionButton with PagesController.
        floatingActionButton: CustomFloatingActionButton(controller: controller,),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      );
    }
  }
