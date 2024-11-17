// import 'package:firebase_messaging/firebase_messaging.dart';

// class RespirationRateNotificationController {
//   final int minRespRate = 30; // Adjust based on newborn norms
//   final int maxRespRate = 60; // Adjust based on newborn norms
//   FirebaseMessaging messaging = FirebaseMessaging.instance;

//   void checkRespirationRate(int respirationRate) {
//     if (respirationRate < minRespRate || respirationRate > maxRespRate) {
//       sendNotification(respirationRate);
//     }
//   }

//   Future<void> sendNotification(int respirationRate) async {
//     await messaging.requestPermission();

//     RemoteMessage notification = RemoteMessage(
//       notification: RemoteNotification(
//         title: "Baby's Breathing Rate Alert",
//         body:
//             "Your baby's breathing rate is ${respirationRate} breaths/min. Please monitor closely.",
//       ),
//       data: {'respirationRate': respirationRate.toString()},
//     );

//     // Send the notification (integrate with backend services)
//     // await messaging.sendMessage(
//     //   message: notification,
//     // );
//   }
// }
