class Check{

  static void Require(Function assertion, {String Message:"Precondition Exception"})
  {
    assert(assertion);
    if(!assertion)
      throw new RequireException(message);
  }

  static void Ensure(Function assertion, {String Message:"PostCondition Exception"})
  {
    assert(assertion);
    if(!assertion)
      throw new RequireException(message);
  }

}