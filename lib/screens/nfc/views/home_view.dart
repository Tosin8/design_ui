

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'receiver_views.dart';
import 'sender_views.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tapcard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => SenderView());
              },
              child: const Text('Sender'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ReceiverView());
              },
              child: const Text('Receiver'),
            ),
          ],
        ),
      ),
    );
  }
}
