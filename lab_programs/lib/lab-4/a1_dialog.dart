import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: DialogUsingGetx(),
  ));
}

class DialogUsingGetx extends StatelessWidget {
  const DialogUsingGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Using GetX'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.defaultDialog(
            title: "Dialog box title",
            middleText: "This is message",
            textConfirm: "Confirm",
            textCancel: "Cancel",
            onConfirm: (){
              print("Confirm button clicked");
              Get.back();
            },
            onCancel: (){
              Get.back();
              print("Cancel button clicked");
            }
          );
        }, child: const Text('Show Dialog box')),
      ),
    );
  }
}
