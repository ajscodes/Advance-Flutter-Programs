import 'package:get/get.dart';
class AsyncExcepController extends GetxController{
  RxString result = "".obs;
  Future<void> fetchdata() async {
    result.value = "Fetching data asynchronously...";
    try{
      await Future.delayed(Duration(seconds: 3));
      result.value = "Data Fetched Sucessfully";
    }catch(e){
      result.value = "Data not Found ${e}";
    }
  }
}