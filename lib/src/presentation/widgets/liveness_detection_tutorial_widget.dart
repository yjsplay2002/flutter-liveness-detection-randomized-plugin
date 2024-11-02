import 'package:flutter_liveness_detection_randomized_plugin/index.dart';

class LivenessDetectionTutorialScreen extends StatefulWidget {
  final VoidCallback onStartTap;
  const LivenessDetectionTutorialScreen({super.key, required this.onStartTap});

  @override
  State<LivenessDetectionTutorialScreen> createState() =>
      _LivenessDetectionTutorialScreenState();
}

class _LivenessDetectionTutorialScreenState
    extends State<LivenessDetectionTutorialScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Liveness Detection - Tutorial',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  ListTile(
                    leading: Text(
                      '1',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "Make sure you are in an area that has sufficient lighting and that your ears are not covered by anything"),
                    title: Text(
                      "Sufficient Lighting",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      '2',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "Hold the phone at eye level and look straight at the camera"),
                    title: Text(
                      "Straight Ahead View",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      '3',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        "The time limit given for the liveness detection system verification process is 45 seconds"),
                    title: Text(
                      "Time Limit Verification",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () => widget.onStartTap(),
              label: const Text(
                "Start the Liveness Detection System",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.info_outline_rounded,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Package Version: 1.0.0',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
