import 'package:hive/hive.dart';

import 'model/person.dart';

class Boxes {
  static Box<Person> getTransactions() => Hive.box<Person>('person');
}
