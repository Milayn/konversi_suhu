import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  // TextEditingController etInput = new TextEditingController();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  double inputUser = 0;
  double kelvin = 0;
  double fahrenheit = 0;
  double reamur = 0;

  final temperatureController = TextEditingController();
  @override
  void dispose() {
    temperatureController.dispose();
    super.dispose();
  }

  konversi() {
    inputUser = double.parse(temperatureController.text);
    setState(() {
      reamur = (0.8 * inputUser);
      fahrenheit = (inputUser * 1.8) + 32;
      kelvin = inputUser + 273.15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Konverter Suhu"),
          ),
          body: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Masukkan Suhu Dalam Celcius"),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                  ],
                  controller: temperatureController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text("Kelvin", style: TextStyle(fontSize: 20)),
                        Text(kelvin.toStringAsFixed(2),
                            style: TextStyle(fontSize: 30)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Fahrenheit", style: TextStyle(fontSize: 20)),
                        Text(fahrenheit.toStringAsFixed(2),
                            style: TextStyle(fontSize: 30)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Reamur", style: TextStyle(fontSize: 20)),
                        Text(reamur.toStringAsFixed(2),
                            style: TextStyle(fontSize: 30)),
                      ],
                    ),
                  ],
                ),
                // Container(
                //     width: double.infinity,
                //     height: 50,
                //     child: RaisedButton(
                //       onPressed: konversi,
                //       color: Colors.lightBlue,
                //       textColor: Colors.white,
                //       child: Text("Konversi Suhu"),
                //     )
                // )
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: const Size.fromHeight(50), // NEW
                  ),
                  onPressed: () {
                    konversi();
                  },
                  child: const Text(
                    'Konversi Suhu',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
