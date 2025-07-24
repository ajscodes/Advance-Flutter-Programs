import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SnackBarUsingGetx(),
  ));
}

class SnackBarUsingGetx extends StatelessWidget {
  const SnackBarUsingGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Using GetX'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.snackbar('Title', 'message',
                    colorText: Colors.white,
                    backgroundColor: Colors.blue,
                    icon: Icon(Icons.add_alert));
              },
              child: Text('Click Here')),
        ));
  }
}
