import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AppCalendar extends StatelessWidget {
  const AppCalendar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarStyle: const CalendarStyle(),
      calendarFormat: CalendarFormat.month,
      focusedDay: DateTime.now(),
      firstDay: DateTime.utc(2019, 12, 01),
      lastDay: DateTime.utc(2030, 12, 31),
      sixWeekMonthsEnforced: false,
      headerStyle: const HeaderStyle(
        titleCentered: true,
        leftChevronVisible: false,
        rightChevronVisible: false,
        formatButtonVisible: false,
      ),
    );
  }
}
