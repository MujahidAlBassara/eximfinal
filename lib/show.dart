import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'add_student.dart';

class show extends StatefulWidget {
  const show({Key? key}) : super(key: key);

  @override
  State<show> createState() => _showState();
}

class _showState extends State<show> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("show"),
        ),
        body: Column(
          children: [
            Text("name1"),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: s.length,
                    itemBuilder: (BuildContext ctx, i) {
                      return Card(
                        elevation: 4,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Text("الاسم     :${s[i]["name"]}"),
                            Text("المستوى     :${s[i]["level"]}"),
                            Text("الترم       :${s[i]["term"]}"),
                            Text("الكورس        :${s[i]["cors"]}"),
                            Text("التخصص   :${s[i]["tt"]}"),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}




//  Column(
//           children: [
//             Expanded(
//               child: Container(
//                 child: ListView.builder(
//                     itemCount: g.length,
//                     itemBuilder: (BuildContext ctx, i) {
//                       return Card(
//                         elevation: 4,
//                         shape: BeveledRectangleBorder(
//                             borderRadius: BorderRadius.circular(5)),
//                         child: ListTile(
//                           tileColor: Colors.amber,
//                           leading: IconButton(
//                             icon: Icon(Icons.delete),
//                             onPressed: () {
//                               setState(() {
//                                 g.removeAt(i);
//                               });
//                             },
//                           ),
//                           trailing: IconButton(
//                             icon: Icon(Icons.update),
//                             onPressed: () {},
//                           ),
//                           title: Text(g[i]),
//                         ),
//                       );
//                     }),
//               ),
//             )
//           ],
//         ),
