import 'package:intl/intl.dart';

class Calculation {
  Calculation();

  static getTodayDate() {
    DateTime datetime = DateTime.now();
    // String datetime1 = DateFormat("yyyy-MM-dd").format(datetime);
    String datetime3 = DateFormat.yMMMMEEEEd().format(datetime);
    String datetime2 = DateFormat.Hms().format(datetime);
    String dateformat = (datetime2 + "&" + datetime3).toString();
    return dateformat;
  }

  static getTime(var tm) {
    var millisec = tm * 1000; //
    var dateObjectRise = new DateTime.fromMillisecondsSinceEpoch(millisec);
    String dateTime = DateFormat.yMMMMEEEEd().format(dateObjectRise);
    var day = dateTime.substring(0, 3);
    day = day.toUpperCase();
    return day;
  }

  static getSunDet(var rise, var set) {
    var risemilliseconds = rise * 1000; // 1575909015000
    var setmilliseconds = set * 1000;

    var dateObjectRise =
        new DateTime.fromMillisecondsSinceEpoch(risemilliseconds);
    var dateObjectSet =
        new DateTime.fromMillisecondsSinceEpoch(setmilliseconds);

    var RiseHour = dateObjectRise.hour;
    var RiseMin = dateObjectRise.minute.toString();
    var SetHour = dateObjectSet.hour;
    var SetMin = dateObjectSet.minute.toString();
    if (RiseMin.length < 2) RiseMin = "0" + RiseMin;
    if (SetMin.length < 2) SetMin = "0" + SetMin;
    if (RiseHour > 12) RiseHour = (RiseHour - 12);
    if (SetHour > 12) SetHour = (SetHour - 12);
    var mytime = RiseHour.toString() +
        ":" +
        RiseMin +
        " AM&" +
        SetHour.toString() +
        ":" +
        SetMin +
        " PM";
    return mytime;
  }
}
