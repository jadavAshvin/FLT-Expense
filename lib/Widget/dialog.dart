import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flt_expense/Utils/app_constants.dart';
import 'package:flt_expense/Utils/keys.dart';

logoutDialog() {
  Get.dialog(
    AlertDialog(
      title: Text("Are you sure you want to log out?"),
      //content: Text("This should not be closed automatically"),
      actions: <Widget>[
        TextButton(
          child: Text("Yes"),
          onPressed: () async {
            await setPrefValue(Keys.AUTH_TOKEN, "");
            await setPrefValue(Keys.ROLE, "");
            await setPrefValue(Keys.EMAIL, "");
            await setPrefValue(Keys.USERNAME, "");
            await setPrefValue(Keys.PROFILE_IMAGE, "");
            await setPrefValue(Keys.USERID, "");
            Get.back();
          },
        ),
        TextButton(
          child: Text("No"),
          onPressed: () {
            Get.back();
          },
        )
      ],
    ),
    barrierDismissible: false,
  );
}

exitAppDialog() {
  Get.dialog(
    AlertDialog(
      title: Text("txtAreYouSureexit"),
      //content: Text("This should not be closed automatically"),
      actions: <Widget>[
        TextButton(
          child: Text("txtYes"),
          onPressed: () async {
            SystemNavigator.pop();
          },
        ),
        TextButton(
          child: Text("txtNo"),
          onPressed: () {
            Get.back();
          },
        )
      ],
    ),
    barrierDismissible: false,
  );
}

// launchUrlDialog(url, {txt}) {
//   Get.dialog(
//     AlertDialog(
//       title: Text(txt == null ? "Are you sure you want to open url?" : txt),
//       //content: Text("This should not be closed automatically"),
//       actions: <Widget>[
//         TextButton(
//             child: Text("Yes"),
//             onPressed: () async {
//               if (await canLaunch(url)) {
//                 await launch(url);
//               } else {
//                 throw 'Could not launch $url';
//               }
//               Get.back();
//             }),
//         TextButton(
//           child: Text("No"),
//           onPressed: () {
//             Get.back();
//           },
//         )
//       ],
//     ),
//     barrierDismissible: false,
//   );
// }

deleteDialog({entity, function}) {
  Get.dialog(
    AlertDialog(
      title: Text('${"txtdeleteItem"} ${entity.toString().toLowerCase()}?'),
      //content: Text("This should not be closed automatically"),
      actions: <Widget>[
        TextButton(
          child: Text("txtYes"),
          onPressed: function,
        ),
        TextButton(
          child: Text("txtNo"),
          onPressed: () {
            Get.back(result: false);
          },
        )
      ],
    ),
    barrierDismissible: false,
  );
}
