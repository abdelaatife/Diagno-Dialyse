import 'package:ddialyse/screens/const.dart';
import 'package:flutter/material.dart';
import 'package:calendar_agenda/calendar_agenda.dart';

class calendre extends StatefulWidget {
  const calendre({Key? key}) : super(key: key);

  @override
  _calendreState createState() => _calendreState();
}

class _calendreState extends State<calendre> {
  List a = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: CalendarAgenda(
            backgroundColor: primary,
            weekDay: WeekDay.long,
            calendarEventColor: primary,
            fullCalendarScroll: FullCalendarScroll.horizontal,
            fullCalendarDay: WeekDay.long,
            selectedDateColor: bleu,
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 140)),
            lastDate: DateTime.now().add(Duration(days: 380)),
            events: List.generate(
                100, (index) => DateTime.now().add(Duration(days: 1))),
            onDateSelected: (date) {},
            calendarLogo: Image.asset("asset/logo.png"),
            selectedDayLogo: AssetImage("asset/logo.png"),
          ),
        ),
      ),
    );
  }
}
