import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:inventario_dialgo/components/databaseController.dart';
import 'package:inventario_dialgo/components/listaInventario.dart';
import 'package:inventario_dialgo/components/actualProduct.dart';
import 'package:inventario_dialgo/components/excel.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Inventario DIALGO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // Future<List<Map>> _productos = databaseController();
  List<Map> _productos;
  List<Map> _inventariado = [
    // {'nombre': 'Prueba', 'cantidad': 0}
  ];
  Map _actualProduct = {
    "nombre": "Seleccione un producto",
    'cantidad':-1,
    "codigo": null,
    "precioCaja": null,
    "precioUnitario": null
  };
  // ignore: missing_return
  Function selectProduct(Map product){
    print(product);
    setState(() {
      _actualProduct = product;
    });
  }
  Function productChange(Map product){
    try{

        Map productChanged = _inventariado.firstWhere((element) => element['nombre'] == product['nombre']);
        setState(() {
          _inventariado[_inventariado.indexOf(productChanged)]= product;
        });
      }
      catch(e){
        print(e);
      }
  }


  // // ignore: must_call_super
  @override
  void initState() {
    super.initState();
    // firstLoad();
    Future.delayed(Duration.zero).then((_)async{
      _productos = await databaseController();
      List<Map> tempInve = [];
      _productos.forEach((element) {
        tempInve.add({
          'nombre': element['nombre'],
          'cantidad': 0
        });
        setState(() {
          _inventariado=tempInve;
        });
      });
    }).then((value) => print('initial is working'));
    // print('initial is working');
  }
  @override
  Widget build(BuildContext context) {
    print(_productos);
    return Scaffold(
      appBar: AppBar(
        title: Text("Almacen DIALGO"),
        actions: [
          IconButton(icon: Icon(Icons.send), onPressed: (){
            print('i was pressed');
            generarExcel(_inventariado);
          })
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListaInveWidget(
                        _inventariado,
                        selectProduct,
                        _actualProduct
                    ),
                  ],
                ),
              )

            ],
          ),
          Positioned(
            top: 0.0,
            width: MediaQuery.of(context).size.width,
            height: 100,
            // left: 0.0,
            child: ActualProductWidget(
                _actualProduct,
                productChange
            ),
          ),
        ],
      ),



      // body: ListView(children: [
      //   Padding(
      //     padding: const EdgeInsets.symmetric(vertical: 30),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Stack(
      //           children: [
      //             Column(
      //               children: [
      //                 ListaInveWidget(
      //                     _inventariado,
      //                     selectProduct,
      //                     _actualProduct
      //                 ),
      //                 TextButton(
      //                   child: Text('Presioname'),
      //                   onPressed: (){
      //                     print('i was pressed');
      //                     generarExcel(_inventariado);
      //                   },
      //                 )
      //               ],
      //             ),
      //             Positioned(
      //               top: 0.0,
      //               width: MediaQuery.of(context).size.width,
      //               height: 100,
      //               // left: 0.0,
      //               child: ActualProductWidget(
      //                   _actualProduct,
      //                   productChange
      //               ),
      //             ),
      //           ],
      //         ),
      //         // FutureBuilder(
      //         //   future: _productos,
      //         //   builder: (BuildContext context,AsyncSnapshot<List<Map<dynamic, dynamic>>> snapshot) {
      //         //     List<Map> tempInve = [];
      //         //     if (snapshot.hasData) {
      //         //       snapshot.data.forEach((element) {
      //         //         tempInve.add({'nombre': element['nombre'], 'cantidad': 0});
      //         //       });
      //         //       return ListaInveWidget(
      //         //         tempInve,
      //         //         selectProduct,
      //         //         _actualProduct
      //         //       );
      //         //     } else {
      //         //       var children = const <Widget>[
      //         //         SizedBox(
      //         //           child: CircularProgressIndicator(),
      //         //           width: 60,
      //         //           height: 60,
      //         //         ),
      //         //         Padding(
      //         //           padding: EdgeInsets.only(top: 16),
      //         //           child: Text('Awaiting result...'),
      //         //         )
      //         //       ];
      //         //       return Center(
      //         //         child: Column(
      //         //           mainAxisAlignment: MainAxisAlignment.center,
      //         //           crossAxisAlignment: CrossAxisAlignment.center,
      //         //           children: children,
      //         //         ),
      //         //       );
      //         //     }
      //         //   },
      //         // ),
      //       ],
      //     ),
      //   ),
      // ]),
    );
  }
}
