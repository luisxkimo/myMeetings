import "Entity.dart";
import "UserRegistrationInfo.dart";

class User extends Entity{

  String _name;
  UserRegistrationInfo _data;

  User(String name, UserRegistrationInfo info, int id){
    Check.Require(()=> name.isNotEmpty);
    Check.Require(()=> info != null);
    Check.Require(()=> id > 0);

    super.SetId(id);
    this._data = info;
    this._name = name;
  }

  String get name => _name;
  UserRegistrationInfo get data => _data;

  void ChangeName(String name)
  {
    Check.Require(() => name != "", Message: "Name != null");
    this._name = name;
  }

}