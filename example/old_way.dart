



main() {
  print("relationship status: $relationshipStatus");
  print("days this month: $daysThisMonth");
}

String get relationshipStatus {
  switch(new DateTime.now().weekday) {
    case DateTime.MON: return "you can fall apart";
    case DateTime.TUE: 
    case DateTime.WED: return "break my heart";
    case DateTime.THU:  return "doesn't even start";
    case DateTime.FRI: return "I'm in love";
    case DateTime.SAT: return "wait";
    case DateTime.SUN: return "always comes too late";
  }
}

int get daysThisMonth {
  var now = new DateTime.now();
  switch(now.month) {
    case DateTime.JAN: return 31;
    case DateTime.FEB: return isLeapYear(now.year) ? 28 : 29;
    case DateTime.MAR: return 31;
    case DateTime.APR: return 30;
    case DateTime.MAY: return 31;
    case DateTime.JUN: return 30;
    case DateTime.JUL: return 31;
    case DateTime.AUG: return 31;
    case DateTime.SEP: return 30;
    case DateTime.OCT: return 31;
    case DateTime.NOV: return 30;
    case DateTime.DEC: return 31;
  }
}

bool isLeapYear(int year) => (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
