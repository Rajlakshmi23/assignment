
import 'package:get/get.dart';

// PagesController is a controller class that extends GetxController from the GetX package.
class PagesController extends GetxController{

  // An observable list of integers, initialized as an empty list.
  var numbers = <int>[].obs;

  // The increment method adds the next integer to the numbers list.
  void increment(){
    numbers.add(numbers.length + 1);
  }

}