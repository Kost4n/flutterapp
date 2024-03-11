import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> recs = [''];

class RecordsList extends StatefulWidget {
  var records = <String, bool> {};

  RecordsList({super.key, required this.records});

  @override
  _RecordsListState createState() => _RecordsListState(this.records);
}

class _RecordsListState extends State<RecordsList> {
  var records = <String, bool> {};


  _RecordsListState(this.records);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: records.length,
        itemBuilder: (BuildContext context, int index) {
          return Record(text: records.keys.elementAt(index), isDone: records.values.elementAt(index));
        }
    );
  }
}

class Record extends StatelessWidget {
  String text = '';
  bool isDone = false;

  Record({super.key, required this.text, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      children: [
        Text(text, style: TextStyle(fontSize: 22)),
        MyCheckBox(checkedValue: isDone)
      ],
    );
  }
}

class MyCheckBox extends StatefulWidget {
  bool checkedValue;

  MyCheckBox({super.key, required this.checkedValue});

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState(checkedValue);
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool checkedValue = false;

  _MyCheckBoxState(this.checkedValue);

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkedValue,
        onChanged: (bool ?value) {
          setState(() {
            checkedValue = value!;
          });
        }
    );
  }
}