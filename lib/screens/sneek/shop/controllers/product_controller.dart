import 'package:get/get.dart';

class ProductController extends GetxController {
  static ProductController instance = Get.find();
  RxList<ProductModel> product = RxList<ProductModel>([]); 
}