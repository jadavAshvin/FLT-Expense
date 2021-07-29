import 'package:flt_expense/no_internet_connection/no_internet.dart';
import 'package:get/get.dart';

class AccessController extends GetxController {
  var isOnline = true.obs;
  // final FirebaseMessaging _fcm = FirebaseMessaging();
  // FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  // var project, pws, type;
  @override
  void onInit() {
    super.onInit();
    checkOnline();
    // tokenCheck();

    // var android = new AndroidInitializationSettings('@mipmap/ic_launcher');
    // var ios = new IOSInitializationSettings();
    // var initializationSetting = new InitializationSettings(
    //   android: android,
    //   iOS: ios,
    // );
    // flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    // flutterLocalNotificationsPlugin.initialize(initializationSetting, onSelectNotification: onSelectNotification);
  }

  // tokenCheck() async {
  //   if (await isConnected()) {
  //     if (getPrefValue(Keys.AUTH_TOKEN) != "") {
  //       verifyTokenAPI().then((value) async {
  //         if (value.statusCode == 200) {
  //         } else {
  //           Get.snackbar(
  //             "Access Failed",
  //             "Please Login Again",
  //             snackPosition: SnackPosition.BOTTOM,
  //           );
  //           await setPrefValue(Keys.AUTH_TOKEN, "");
  //           await setPrefValue(Keys.ROLE, "");
  //           await setPrefValue(Keys.EMAIL_VERIFY, "");
  //           await setPrefValue(Keys.PHONE_VERIFY, "");
  //           await setPrefValue(Keys.MOBILE, "");
  //           await setPrefValue(Keys.EMAIL, "");
  //           Get.back();
  //           AppConstants.EMPLOYEE_ID = "";
  //           Get.offAll(Login());
  //         }
  //       });
  //     }
  //   }
  // }

  // Future onSelectNotification(String payload) async {
  //   var data = jsonDecode(payload);

  //   print("Payload $payload");
  //   Get.defaultDialog(
  //     title: '${data['notification']['title']}',
  //     content: Container(
  //         width: Get.width / 1.20,
  //         child: Text(
  //           '${data['notification']['body']}',
  //           textAlign: TextAlign.center,
  //         )),
  //     confirm: TextButton(
  //       onPressed: () {

  //       },
  //       child: Text('Go to notifications'),
  //     ),
  //     cancel: FlatButton(
  //       onPressed: () {
  //         Get.back();
  //       },
  //       child: Text(back.tr),
  //     ),
  //   );
  // }

  // Future _showNotification(title, noti, payload) async {
  //   var android = new AndroidNotificationDetails(
  //     'notification_channel_id',
  //     'Channel Name',
  //     'Hello World',
  //     playSound: true,
  //   );
  //   var ios = new IOSNotificationDetails();
  //   var platformSpecifics = new NotificationDetails(
  //     android: android,
  //     iOS: ios,
  //   );
  //   await flutterLocalNotificationsPlugin.show(0, '$title', '$noti', platformSpecifics, payload: payload);
  // }

  //Online Checker
  Future<void> checkOnline() async {
    isOnline(await isConnected());
    update();
    // cofigureFCM();
  }

  // cofigureFCM() {
  //   _fcm.configure(
  //     onMessage: (Map<String, dynamic> message) async {
  //       print("onMessage: $message");
  //       await _showNotification(message['notification']['title'], message['notification']['body'], jsonEncode(message));
  //     },
  //     onLaunch: (Map<String, dynamic> message) async {
  //       print("onLaunch: $message");
  //     },
  //     onResume: (Map<String, dynamic> message) async {
  //       print("onResume: $message");
  //     },
  //   );
  // }
}
