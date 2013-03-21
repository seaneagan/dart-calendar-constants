dart-calendar-constants
=======================

Dart currently exposes weekday and month constants as 3-letter abbreviated static constants in [DateTime].  This is bad because:

* you always have to prefix them with "DateTime."
* abbreviations are unreadable (especially for non-native english speakers?)
* not really specific to DateTime, so misplaced
* weekday and month constants are mixed together

This pub package is a proposal to:

* move each set of constants ([months](lib/month.dart) and [weekdays](lib/weekday.dart)) to its own library
* unabbreviate the constants
* link to those libraries in the documentation for [DateTime.weekday] and [DateTime.month]

You can compare the [old way](example/old_way.dart) and [new way](example/new_way.dart).

If you agree, then star [this issue](http://dartbug.com/xxx).

Presumably these libraries would move to a more broad ranging calendar package in the future.

[DateTime]: http://api.dartlang.org/docs/bleeding_edge/dart_core/DateTime.html
[DateTime.weekday]: http://api.dartlang.org/docs/bleeding_edge/dart_core/DateTime.html#weekday
[DateTime.month]: http://api.dartlang.org/docs/bleeding_edge/dart_core/DateTime.html#month
