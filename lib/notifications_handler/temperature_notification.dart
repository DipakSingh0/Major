// import 'package:firebase_messaging/firebase_messaging.dart';

// class TemperatureNotificationController {
//   final double minTemp = 97.7; // Lower limit for newborn babies in Fahrenheit
//   final double maxTemp = 100.4; // Upper limit for newborn babies in Fahrenheit
//   FirebaseMessaging messaging = FirebaseMessaging.instance;

//   void checkTemperature(double temperature) {
//     if (temperature < minTemp || temperature > maxTemp) {
//       sendNotification(temperature);
//     }
//   }

//   Future<void> sendNotification(double temperature) async {
//     await messaging.requestPermission();

//     RemoteMessage notification = RemoteMessage(
//       notification: RemoteNotification(
//         title: "Baby's Temperature Alert",
//         body:
//             "Your baby's temperature is ${temperature}°F. Please monitor closely.",
//       ),
//       data: {'temperature': temperature.toString()},
//     );

//     // Send the notification (integrate with backend services)
//     // await messaging.sendMessage(
//     //   message: notification,
//     // );
//   }
// }
