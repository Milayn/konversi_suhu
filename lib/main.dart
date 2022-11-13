import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  // TextEditingController etInput = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var etInput; 
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Konverter Suhu"),
          ),
          body: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  decoration:
                      InputDecoration(hintText: "Masukkan Suhu Dalam Celcius"),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: etInput,
                  keyboardType: TextInputType.number,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Kelvin", style: TextStyle(fontSize: 20)),
                        Text("30", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Fahrenheit", style: TextStyle(fontSize: 20)),
                        Text("30", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Reamur", style: TextStyle(fontSize: 20)),
                        Text("30", style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ],
                ),
                Container(
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      child: Text("Konversi Suhu"),
                    ))
              ],
            ),
          ),
          // body: Container(
          //   margin: EdgeInsets.all(8),
          //   child: Column(
          //     children: [
          //       TextFormField(
          //         decoration: InputDecoration(
          //           hintText: 'Masukkan Suhu Dalam Celcius',
          //         ),
          //         inputFormatters: <TextInputFormatter>[
          //           FilteringTextInputFormatter.digitsOnly
          //         ],
          //         keyboardType: TextInputType.number,
          //       ),

          //       ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //           primary: Colors.blue,
          //           minimumSize: const Size.fromHeight(50), // NEW
          //         ),
          //         onPressed: () {},
          //         child: const Text(
          //           'Konversi Suhu',
          //           style: TextStyle(fontSize: 15, color: Colors.white),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ));
  }
}
