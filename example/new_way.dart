
import "package:calendar_constants/weekday.dart";
import "package:calendar_constants/month.dart";

main() {
  print("relationship status: $relationshipStatus");
  print("days this month: $daysThisMonth");
}

String get relationshipStatus {
  switch(new DateTime.now().weekday) {
    case MONDAY: return "you can fall apart";
    case TUESDAY: 
    case WEDNESDAY: return "break my heart";
    case THURSDAY:  return "doesn't even start";
    case FRIDAY: return "I'm in love";
    case SATURDAY: return "wait";
    case SUNDAY: return "always comes too late";
  }
}

int get daysThisMonth {
  var now = new DateTime.now();
  switch(now.month) {
    case JANUARY: return 31;
    case FEBRUARY: return isLeapYear(now.year) ? 28 : 29;
    case MARCH: return 31;
    case APRIL: return 30;
    case MAY: return 31;
    case JUNE: return 30;
    case JULY: return 31;
    case AUGUST: return 31;
    case SEPTEMBER: return 30;
    case OCTOBER: return 31;
    case NOVEMBER: return 30;
    case DECEMBER: return 31;
  }
}

bool isLeapYear(int year) => (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
