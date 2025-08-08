import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomsheetUsingGetx(),
  ));
}

class BottomsheetUsingGetx extends StatelessWidget {
  const BottomsheetUsingGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Using GetX'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 200,
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Profile'),
                          onTap: () {
                            Get.back();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Settings'),
                          onTap: () {
                            Get.back();
                          },
                    )]
                  ),
                ));
              },
              child: Text('Click Here')),
        ));
  }
}
