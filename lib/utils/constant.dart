import 'package:flutter/material.dart';

// Size
const double kDefaultPadding = 16.0;

const double kDefaultFontSize = 16.0;

const double kDefaultBorderSize = 10.0;
const double kDefaultBorderWidth = 1.0;

const double kDefaultElevation = 1.0;

const double kDefaultCursorHeight = 20.0;
const double kDefaultTextFieldHeight = 150.0;

// Default String
const String kEmptyString = '';
const String kVerifyCodeKey = 'VERIFY_CODE';
const String kPhoneNumberRegisterKey = 'PHONE_NUMBER_REGISTER';
const String kPhoneNumberLoginKey = 'PHONE_NUMBER_LOGIN';
const String kPhoneNumberLostKey = 'PHONE_NUMBER_LOST';
const String kEmailRegisterKey = 'EMAIL_REGISTER';
const String kEmailRecoveryKey = 'EMAIL_RECOVERY';

// Colors
const Color kDefaultBackgroundColor = Color(0xFFFEFEFE);
const Color kDarkModeBackgroundColor = Color(0xFF000000);

const Color kDefaultAppBarBackgroundColor = Color(0xFF3382CC);
const Color kDarkModeAppBarBackgroundColor = Color(0xFF393D40);

const Color kDefaultBottomAppBarColor = Color(0xFFFEFEFE);
const Color kDarkModeBottomAppBarColor = Color(0xFF393D40);

const Color kDefaultInputColor = Color(0xFF17AEE0);
const Color kDarkModeInputColor = Color(0xFF393D40);

const Color kTitleTextColor = Color(0xFF303030);
const Color kBodyTextColor = Color(0xFF4B4B4B);
const Color kTextLightColor = Color(0xFF959595);
const Color kInfectedColor = Color(0xFFFF8748);
const Color kDeathColor = Color(0xFFFF4848);
const Color kRecoverColor = Color(0xFF36C12C);
const Color kPrimaryColor = Color(0xFFA43AF4);
final Color kShadowColor = const Color(0xFFB7B7B7).withOpacity(.16);
final Color kActiveShadowColor = const Color(0xFF4056C6).withOpacity(.15);

const Color kDefaultBorderColor = Colors.black;
const Color kDefaultErrorBorderColor = Colors.red;
const Color kDefaultCursorColor = Colors.black;

// Text Style
const TextStyle kHeadingTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

const TextStyle kSubTextStyle = TextStyle(
  fontSize: 16,
  color: kTextLightColor,
);

const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 18,
  color: kTitleTextColor,
  fontWeight: FontWeight.bold,
);

const TextStyle kButtonTextStyle = TextStyle(
  color: Colors.grey,
  fontSize: 16.0,
);

const TextStyle kInputTextStyle = TextStyle(
  color: Colors.black,
);

// Search box
final InputBorder kDefaultSearchBoxBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(8.0),
  borderSide: BorderSide.none,
);

const EdgeInsetsGeometry kDefaultSearchBoxPadding = EdgeInsets.only(left: 10);
