class Item{

  String _name;
  num _quantity;
  num _value;

  String get name => _name;
  num get quantity => _quantity;
  num get value => _value;

  Item(this._name, this._quantity, [this._value]);

  
  void SetPrice(num price)
  {
    _value = price;
  }

}