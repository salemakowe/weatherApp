// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/constants/mydecor.dart';
import 'package:weather_app/constants/mysizes.dart';

class MyWidgets {
  circleClose(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: Sizes.h30,
        width: Sizes.w40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        child: Center(
          child: Icon(
            Icons.close,
            size: Sizes.w15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  customDivider({double? height, Color? color, double? thickness}) {
    return SizedBox(
      height: height ?? 1,
    );
  }

  loadingDiag() {
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        color: Colors.black.withOpacity(.7),
        child: AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          contentPadding: const EdgeInsets.all(0),
          insetPadding: const EdgeInsets.symmetric(horizontal: 130),
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          content: SizedBox(
            height: Sizes.h150,
            width: Sizes.h150,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SpinKitFadingCube(
                  color: Colors.white,
                  size: 30,
                ),
                // customDivider(height: Sizes.h25),
                // Text(
                //   'please wait ...',
                //   style: MyDecor()
                //       .textstyle(fontcolor: Colors.white, fontsize: Sizes.w15),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  futureLoading({double? iconSize}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SpinKitFadingCube(
          color: Colors.grey,
          size: iconSize ?? 30,
        ),
        // customDivider(height: Sizes.h25),
        // Text(
        //   'please wait ...',
        //   style:
        //       MyDecor().textstyle(fontcolor: Colors.black, fontsize: Sizes.w15),
        // )
      ],
    );
  }

  RoundedRectangleBorder bottomSheetShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(Sizes.w20),
          topLeft: Radius.circular(Sizes.w20)),
    );
  }

  bottomSheet(
      {required BuildContext context,
      required Widget body,
      bool isdismissble = true,
      Color? sheetColor}) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: sheetColor ?? Colors.white,
      isScrollControlled: true,
      isDismissible: isdismissble,
      shape: bottomSheetShape(),
      builder: (context) =>
          Padding(padding: MediaQuery.of(context).viewInsets, child: body),
    );
  }

  bottomSheetTop(
      {required BuildContext context,
      required String title,
      bool? middleTitle = true,
      bool? removeClose = false,
      double? fontSize,
      FontWeight? fontWeight}) {
    return Column(
      children: [
        customDivider(height: Sizes.h10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (middleTitle == true) Container(),
            Text(
              title,
              style: MyDecor().textstyle(
                  fontsize: fontSize ?? Sizes.w18, fontweight: fontWeight),
            ),
            if (removeClose == false) circleClose(context)
          ],
        ),
      ],
    );
  }
}
