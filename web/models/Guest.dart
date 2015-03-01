import "Entity.dart";
import "Enums/GuestRole.dart";

class Guest extends Entity{

  GuestRole _role;
  num _userId;
  List<Permission> _permissions = {};

  Guest(num userId, num id)
  {
    Check.Require(()=>userId > 0);
    Check.Require(()=>id > 0);
    this._userId = userId;
    this.SetId(id);
  }

  List<Permission> get Permissions => _permissions;
  GuestRole get Role => _role;

  void AddPermission(Permission permission)
  {
    Check.Require(()=>permission !=null);
    this._permissions.add(permission);
  }

}

abstract class Permission {

  String Name;

}