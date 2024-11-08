// import 'package:firebase_messaging/firebase_messaging.dart';


// // setting up the controller value 
// class HeartRateNotificationController {
//   final int minBpm = 100;
//   final int maxBpm = 160;
//   FirebaseMessaging messaging = FirebaseMessaging.instance;

//   //checks if heart rate is within range and sends notification if not
//   void checkHeartRate(int heartRate) {
//     if (heartRate < minBpm || heartRate > maxBpm) {
//       sendNotification(heartRate);
//     }
//   }

//   // Function to send notification
//   Future<void> sendNotification(int heartRate) async {
//     await messaging.requestPermission();

//     //notification details to be sent
//     RemoteMessage notification = RemoteMessage(
//       notification: RemoteNotification(
//         title: "Heart Rate Alert",
//         body: "Newborn heart rate out of range: $heartRate bpm!",
//       ),
//       data: {'heartRate': heartRate.toString()},
//     );

//     // Send the notification (integrate this with backend services)
//     // await messaging.sendMessage(
//     //   message: notification,
//     // );
//   }
// }
