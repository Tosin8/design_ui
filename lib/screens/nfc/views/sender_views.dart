import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/screens/nfc/nfc_controller.dart';


class SenderView extends StatelessWidget {
  final NfcController _nfcController = Get.put(NfcController());

   SenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tapcard - Sender')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Business Card Data'),
              onChanged: (value) {
                _nfcController.nfcData.value = value;
              },
            ),
            const SizedBox(height: 20),
            Obx(() {
              return _nfcController.isSharing.value
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        if (_nfcController.nfcData.value.isNotEmpty) {
                          _nfcController.startSharing(_nfcController.nfcData.value);
                        } else {
                          Get.snackbar('Error', 'Please enter data to share');
                        }
                      },
                      child: const Text('Share Business Card'),
                    );
            }),
            // Your UI design for displaying cards
            // Example:
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: CircleAvatar(child: Text('J')),
                    title: Text('Jonas Broms'),
                    subtitle: Text('UX/UI Designer\njonas.broms@example.com\n+234 805 456 321'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
