dart-calendar-constants
=======================

This is an attempt to improve on how weekday and month constants are exposed in Dart.

They are currently exposed as static constants in DateTime.  This is bad because:

* weekday and month constants are mixed together
* they use ugly/unreadable 3 letter abbreviations
* you always have to prefix them with "DateTime."
* they could be used by other classes than DateTime

My proposal is to:

* unabbreviate the constants
* expose each set of constants to its own library in a pub package
* link to those libraries in the documentation for DateTime.weekday and DateTime.month

If you like this proposal star http://dartbug.com/xxx
