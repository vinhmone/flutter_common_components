import 'dart:developer' as dev;
import 'dart:math';

bool validatePhoneNumber(String? s) {
  if (s == null) return false;
  // final phoneNumber =
  //     RegExp(r"^(\([2-9][0-9][0-9]\)|[0-9]{3}-)[0-9]{3}-[0-9]{4}$");
  final phoneNumber = RegExp(r"^[2-9][0-9][0-9]-[0-9]{3}-[0-9]{4}$");
  return phoneNumber.hasMatch(s);
}

bool validateEmailFormat(String? s) {
  if (s == null) return false;
  final phoneNumber = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
  return phoneNumber.hasMatch(s);
}

String formatPhoneNumber(String s) {
  if (s.isNotEmpty) {
    s = s.replaceAll(RegExp(r"[-]{2,}"), "-");
    List<String> list = s.split('');
    if (list.last == "-") {
      list.removeLast();
    } else {
      if (list.length == 4) {
        list.insert(3, "-");
      } else if (list.length == 8) {
        list.insert(7, "-");
      } else if (list.length > 12) {
        list.removeLast();
      }
    }
    if (list.length > 3 && list[3] != "-") {
      list.insert(3, "-");
    }
    return list.join();
  }
  return s;
}

bool validateInvitationCode(String? s) {
  return [true, false][Random().nextInt(2)];
}

bool validatePhoneNumberCode(String? s) {
  return [true, false][Random().nextInt(2)];
}

EmailValidate validateEmailCode(String? s) {
  return [
    EmailValidate.valid,
    EmailValidate.existing,
  ][Random().nextInt(2)];
}

enum EmailValidate {
  valid,
  existing,
}
