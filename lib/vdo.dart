// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';
// // import 'wireframe12.dart';
// final String userId = math.Random().nextInt(10000).toString() ;
// class Vdocall extends StatefulWidget {
//   final String sessionId;
//   const Vdocall({super.key,required this.sessionId});

//   @override
//   State<Vdocall> createState() => _MainState();
// }

// class _MainState extends State<Vdocall> {
//   final callingId = TextEditingController(text: 'group_call_id');
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         // Positioned.fill(
//         //   child: Image.asset(
//         //     // 'assets/Images/background-1.png', 
//         //     // fit: BoxFit.cover, 
//         //   ),
//         // ),
//         CallPage(callingId: callingId.text.toString(),)


//       ],
//     );
//   }
// }
// class CallPage extends StatelessWidget {
//   final String callingId ;
//   const CallPage({Key? key , required this.callingId}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return  SafeArea(
//          child: ZegoUIKitPrebuiltVideoConference(
//           appID: 165716878,
//           appSign: '48b1b55b83f887ad09c9ae9dfedc04ff55decb5f839b4e46c240a71037d27e64',
//           userID: userId,
//           userName: 'user',
//           conferenceID:callingId ,
//           config: ZegoUIKitPrebuiltVideoConferenceConfig(),
//         ),
//     );
//   }
// }