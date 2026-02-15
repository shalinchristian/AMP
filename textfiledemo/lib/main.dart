import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Text t1= Text("Text file demo");
    AppBar appBar = AppBar(title: t1, backgroundColor: Colors.pinkAccent,);

    TextStyle st = TextStyle(fontSize: 14, color: Colors.indigo, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);

    OutlineInputBorder bor = OutlineInputBorder();

    InputDecoration deco = InputDecoration(border: bor, icon: Icon(Icons.smartphone_outlined), labelText: "Mobile No.", hintText: "Enter 10 Digit Number");

    TextEditingController te = TextEditingController();
    TextField tf = TextField(keyboardType: TextInputType.phone, controller: te, style: st, decoration: deco,);

    Text bl = Text("Show Mobile Number");
      ElevatedButton eb = ElevatedButton(onPressed:(){
        debugPrint(te.text);}, child: bl);

    Column cl = Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [tf,eb],);

    Container cn = Container(alignment: Alignment.center, child: cl,);

    Scaffold sc = Scaffold(appBar: appBar, body: cn);

    MaterialApp ma = MaterialApp(home: sc, debugShowCheckedModeBanner: false,);

    return ma;

  }
}