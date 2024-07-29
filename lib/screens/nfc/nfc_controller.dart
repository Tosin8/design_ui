import 'package:get/get.dart';
import 'package:nfc_manager/nfc_manager.dart';

class NfcController extends GetxController {
  var nfcData = ''.obs;
  var isSharing = false.obs;
  var isReceiving = false.obs;

  void startSharing(String data) {
    isSharing.value = true;
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      final ndef = Ndef.from(tag);
      if (ndef == null || !ndef.isWritable) {
        Get.snackbar('Error', 'NFC tag is not writable');
        isSharing.value = false;
        return;
      }

      final message = NdefMessage([NdefRecord.createText(data)]);
      try {
        await ndef.write(message);
        isSharing.value = false;
        Get.snackbar('Success', 'Sharing Complete');
      } catch (e) {
        Get.snackbar('Error', 'Failed to write NFC tag');
        isSharing.value = false;
      }
      NfcManager.instance.stopSession();
    });
  }

  void startReceiving() {
    isReceiving.value = true;
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      final ndef = Ndef.from(tag);
      if (ndef == null) {
        Get.snackbar('Error', 'No NDEF data found');
        isReceiving.value = false;
        return;
      }
      final ndefMessage = ndef.cachedMessage;
      if (ndefMessage == null) {
        Get.snackbar('Error', 'No NDEF data found');
        isReceiving.value = false;
        return;
      }
      final ndefRecord = ndefMessage.records.first;
      nfcData.value = String.fromCharCodes(ndefRecord.payload);
      isReceiving.value = false;
      Get.snackbar('Success', 'Contact saved!');
      NfcManager.instance.stopSession();
    });
  }
}
