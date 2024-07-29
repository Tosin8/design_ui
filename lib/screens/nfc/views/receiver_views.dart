import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../nfc_controller.dart';


class ReceiverView extends StatelessWidget {
  final NfcController _nfcController = Get.put(NfcController());
   ReceiverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tapcard - Receiver')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(() {
              return _nfcController.isReceiving.value
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: _nfcController.startReceiving,
                      child: const Text('Receive Business Card'),
                    );
            }),
            const SizedBox(height: 20),
            Obx(() {
              return _nfcController.nfcData.isEmpty
                  ? const Text('No data received yet')
                  : ListTile(
                      leading: const CircleAvatar(child: Text('R')),
                      title: const Text('Received Data'),
                      subtitle: Text(_nfcController.nfcData.value),
                    );
            }),
          ],
        ),
      ),
    );
  }
}
