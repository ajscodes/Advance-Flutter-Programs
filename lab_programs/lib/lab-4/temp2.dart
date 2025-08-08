import 'package:flutter/material.dart';
import 'package:lab_programs/lab-4/temp.dart';
import 'package:get/get.dart';

class AsyncExcepView extends StatelessWidget {
  AsyncExcepView({super.key});

  AsyncExcepController asyncExcepController = Get.put(AsyncExcepController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Async Excep Demo"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return Text(asyncExcepController.result.value , style: TextStyle(fontSize: 20),);
              },),

              ElevatedButton(onPressed: ()async {
                await asyncExcepController.fetchdata();
              }, child: Text("Click to Fetch Data"))
            ],
          ),
        )
    );
  }
}