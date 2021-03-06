import 'package:camera/camera.dart';
import 'package:payflow/modules/barcode/barcode_scanner_status.dart';

class BarcodeScannerController {
  BarcodeScannerStatus status = BarcodeScannerStatus();

  void getAvailableCameras() async {
    try {
      final response = await availableCameras();
      final camera = response.firstWhere(
        (element) => element.lensDirection == CameraLensDirection.back,
      );
      final cameraController = CameraController(
        camera,
        ResolutionPreset.max,
        enableAudio: false,
      );

      status = BarcodeScannerStatus.available(cameraController);
    } catch (e) {
      status = BarcodeScannerStatus.error(e.toString());
    }
  }

  void listenCamera() {}
}
