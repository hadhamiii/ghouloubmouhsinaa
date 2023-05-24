import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "إسم المستخدم غير صحيح";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "بريد إلكتروني إسم غير صحيح";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "رقم هاتف غير صحيح";
    }
  }

  if (val.isEmpty) {
    return "لا يمكن أن يكون فارغا";
  }

  if (val.length < min) {
    return "لا يمكن أن يكون أقل من $min";
  }

  if (val.length > max) {
    return "لا يمكن أن يكون أكبر من $max";
  }
}
