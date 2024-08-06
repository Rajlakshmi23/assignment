
import 'package:assignment/app/pages/controller/pages_controller.dart';
import 'package:get/get.dart';

// This class is responsible for binding dependencies for the PagesController.
class PagesBinding extends Bindings{

 @override
  void dependencies(){
  // Using GetX's lazyPut to lazily initialize the PagesController.
   Get.lazyPut<PagesController>(
           () => PagesController(),
   );
 }
}