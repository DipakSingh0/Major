// // This is the service worker for Firebase Cloud Messaging
// importScripts('https://www.gstatic.com/firebasejs/9.0.0/firebase-app.js');
// importScripts('https://www.gstatic.com/firebasejs/9.0.0/firebase-messaging.js');

// // Initialize the Firebase app in the service worker by passing in the
// // messagingSenderId.
// const firebaseConfig = {
//     // Your Firebase config here
//     apiKey: "YOUR_API_KEY",
//     authDomain: "YOUR_AUTH_DOMAIN",
//     projectId: "YOUR_PROJECT_ID",
//     storageBucket: "YOUR_STORAGE_BUCKET",
//     messagingSenderId: "YOUR_MESSAGING_SENDER_ID",
//     appId: "YOUR_APP_ID",
//     measurementId: "YOUR_MEASUREMENT_ID"
// };

// firebase.initializeApp(firebaseConfig);

// // Retrieve an instance of Firebase Messaging so that it can handle
// // background messages.
// const messaging = firebase.messaging();

// messaging.onBackgroundMessage((payload) => {
//     console.log('Message received. ', payload);
//     // Customize notification here
//     const notificationTitle = payload.notification.title;
//     const notificationOptions = {
//         body: payload.notification.body,
//         icon: 'firebase-logo.png' // Optional: add your icon here
//     };

//     return self.registration.showNotification(notificationTitle,
//         notificationOptions);
// });