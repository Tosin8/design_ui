// import 'package:get/get.dart';
// import 'package:ui_design/screens/furniture_app/model/product.dart';

// class ProductController extends GetxController {
//   static ProductController instance = Get.find();
//   RxList<ProductModel> product = RxList<ProductModel>([]); 
//   String collection = 'products'; 

//   @override
//   void onReady() {
//     product.bindStream(fetchProducts());
//     super.onReady();
//   }

//   Stream<List<ProductModel>> fetchProducts () => 
//   firebaseFirestore
//   .collection(collection) 
//   .snapshots()
//   .map((query) => query.docs.map((item) => ProductModel.fromMap(item.data())).toList());
// }