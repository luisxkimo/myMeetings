import "../myLibs/Check.dart";
class Entity{
  num _id;
  num get id => id;
  Check Check = new Check();
  void SetId(num Id)
  {
    this._id = Id;
  }
}