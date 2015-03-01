import "../myLibs/Check.dart";

class UserRegistrationInfo {

  String Email;
  String Twitter;

  UserRegistrationInfo(String Email, String Twitter)
  {
    Check.Require(()=>Email.isNotEmpty, Message: "Email must be not empty");
    this.Email = Email;
    this.Twitter = Twitter;
  }
}