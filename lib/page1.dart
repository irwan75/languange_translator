import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:languanges_translator/model/person.dart';

class Page1 extends StatelessWidget {
  // var box = Hive.box('person');

  var box = Hive.box('myBox');
  void setData() async {
    box.put('name',
        'David djsandjksa djsadjk asjdnasj djkas dnasj djas jkwq dj qwn dqwdq wqqwi qw qwe qwe ioqw eqw eiqwioejqwdnqwndjqwndjkqwdq qw q qw dwjdj djkq dbdnsamb d d qwdkjqwbd  dbnamsbd dnamsb a dbamnsbd nabdn ab  admnsb dbasnbdmnas bdmbasndb ansb dnabmabdn ba b ab dma mantapji bosku');

    var name = box.get('name');

    print('Name: $name');
  }

  Future addPerson(String name, int age) async {
    var box = await Hive.openBox('person');

    final person = Person()
      ..name = "name"
      ..age = 22;
    box.add(person);
  }

  Future printBox() async {
    var box = await Hive.openBox('person');
  }

  @override
  Widget build(BuildContext context) {
    setData();
    // addPerson("irwan", 22);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text("Maksud"),
      )),
    );
  }
}
