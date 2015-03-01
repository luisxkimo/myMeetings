import 'Enums/MeetingStatus.dart';
import 'Guest.dart';
import "Entity.dart";

class Meeting extends Entity{

  String _name;
  DateTime _date;
  List<Guest> _guests = new List();
  num _maxGuests=999999999;
  num _maxValue=999999999;
  num _minValue=-999999999;
  MeetingStatus _state = MeetingStatus.Open;


  Meeting(String name, DateTime date, int id)
  {
    Check.Require(()=> name.isNotEmpty);
    Check.Require(()=> date != null);
    Check.Require(()=> id >0);
    this._date = date;
    this._name=name;
    SetId(id);
  }

  void AddGuests(Guest guest)
  {
    _guests.add(guest);
  }

}
