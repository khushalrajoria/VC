// import 'package:flutter/material.dart';

// import 'vdo.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final TextEditingController _conferenceIdController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Enter Conference ID'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _conferenceIdController,
//               decoration: const InputDecoration(
//                 labelText: 'Conference ID',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 final conferenceID = _conferenceIdController.text.trim();
//                 if (conferenceID.isNotEmpty) {
//                   // Navigate to video call page
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Vdocall(sessionId: conferenceID),
//                     ),
//                   );
//                 } else {
//                   // Show a message if no ID is entered
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                       content: Text('Please enter a valid Conference ID'),
//                     ),
//                   );
//                 }
//               },
//               child: const Text('Join Conference'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

class DemoAppHome extends StatelessWidget {
  const DemoAppHome({Key? key, required this.call}) : super(key: key);

  final Call call;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamCallContainer( // Stream's pre-made component
        call: call,
      ),
    );
  }
}