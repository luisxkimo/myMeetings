import '../models/Item.dart';
import 'dart:math';

class Gateway{

  List<Item> GenerateData(num quantity)
  {
    var items = new List<item>();

    var names= ['Patatas','Frijoles','Ensalada','Nachos','Palomitas','Cerveza','Papel Higinenico','LataAtun','Jamon York'];

    var rand = new Random();

    for(int i=0; i < quantity; i++){
      var newItem=new Item(names[rand.nextInt(9)],rand.nextInt(25));
      items.add(newItem);
    }
    return items;
  }
}