import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'show.dart';

class student extends StatefulWidget {
  const student({Key? key}) : super(key: key);

  @override
  State<student> createState() => _studentState();
}

List<Map> s = <Map>[];

List<String> l = [];
TextEditingController name = TextEditingController();
TextEditingController level = TextEditingController();
TextEditingController term = TextEditingController();
TextEditingController cors = TextEditingController();
TextEditingController tt = TextEditingController();
List<String> st = [];

class _studentState extends State<student> {
  @override
  void sav() {}
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("تسجيل طالب"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: "enter the name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
              TextField(
                  controller: level,
                  decoration: InputDecoration(
                    labelText: "enter level",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
              TextField(
                  controller: term,
                  decoration: InputDecoration(
                    labelText: "enter term",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
              TextField(
                  // onSubmitted: (value) {
                  //   setState(() {
                  //     l.add(value);
                  //   });
                  // },
                  controller: cors,
                  decoration: InputDecoration(
                    labelText: "enter cors",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
              TextField(
                  controller: tt,
                  decoration: InputDecoration(
                    labelText: "enter التخصص",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      s.add({
                        "name": name.text,
                        "level": level.text,
                        "term": term.text,
                        "cors": cors.text,
                        "tt": tt.text
                      });
                   
                    });

                  
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => show()));
                  }),
                  child: Text("حفظ")),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      name.clear();
                      level.clear();
                      term.clear();
                      cors.clear();
                      tt.clear();
                    });
                   
                  }),
                  child: Text("مسح")),
              ElevatedButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  
                  }),
                  child: Text("تراجع"))
            ],
          ),
        ),
      ),
    );
  }
}
