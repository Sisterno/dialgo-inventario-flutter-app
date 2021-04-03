import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inventario_dialgo/components/databaseController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var db = databaseController();
    var productoFila = {
      "productos":[
        "CHIZITOS QUESO 16GX7X14 TIR",
        "CHIZITOS QUESO 16GX91X1",
        "CHIZITOS QUESO 40GX5X12 TIR",
        "CHIZITOS QUESO 40GX48X1",
        "CHIZITOS QUESO 25GX7X12TIR",
        "CHIZITOS QUESO 25GX48X1",
        "CHIZITOS QUESO PIC 16GX7X14 TIR",
        "CHIZITOS QUESO PICANTE 16GX91X1",
        "CHIZITOS QUESO PIC 25GX7X12TIR",
        "CHIZITOS QUESO PICANTE 40GX5X12 TIR",
        "CHIZITOS QUESO PICANTE 40GX48X1",
        "CHIZITOS QUESO 190GX8X1 C/PREC",
        "CHEETOS HORNEADOS QUESO 34GX6X12 TIR",
        "CHEETOS HORNEADOS QUESO 34GX56X1",
        "CHEETOS HORNEADOS QUESO 74GX32X1",
        "CHEETOS HORNEADOS QUESO 200GX10X1",
      ]
    };
    List<DataRow> x =[];
    productoFila["productos"].forEach((e) => {
      x.add(DataRow(
          cells: [
            DataCell(Text(e)),
            DataCell(Text('1')),
            DataCell(Text('Cajas')),
          ]
      ))
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Almacen DIALGO"),
      ),
      body: ListView(
        children:[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextFormField(
                  key: _formKey,
                  decoration: const InputDecoration(
                    hintText: 'Cantidad',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    try{
                      int.parse(value);
                    }
                    catch(e){
                      return 'Eso no es un numero';
                    }
                    if (value.isEmpty) {
                      return 'Ingrese un valor';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        // Process data.
                      }

                    },
                    child: Text('Submit'),
                  ),
                ),
                DataTable(columns: const [
                  DataColumn(
                    label: Text('Producto'),
                  ),
                  DataColumn(
                    label: Text('Cantidad'),
                  ),
                  DataColumn(
                    label: Text('Unidad'),
                  ),

                ], rows: x
                // [DataRow(cells: [
                //   DataCell(Text('e')),
                //   DataCell(Text('1')),
                //   DataCell(Text('Cajas'))
                // ]
                // )]
                )
              ],
            ),
          ),
        ]
      ),
    );
  }
}
