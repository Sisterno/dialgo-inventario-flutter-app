// void Datos(Database db) async{
//   // await db.rawQuery('CREATE TABLE "Test" (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
//   await db.rawQuery('INSERT INTO "Test" (name, value, num) VALUES("some name", 1234, 456.789)');
// }


import 'package:sqflite/sqflite.dart';
import 'testData.dart';

Future<List<Map>> databaseController() async{
  var db = await openDatabase(
      "dialgo.db",
      version: 2,
      onCreate:(Database db, int version) async {
        // When creating the db, create the table
        await db.execute('CREATE TABLE producto (idProducto INTEGER PRIMARY KEY AUTOINCREMENT, nombre TEXT, codigo TEXT, precioCaja double, precioUnitario double)');
        await db.execute('CREATE TABLE inventario (idInventario INTEGER PRIMARY KEY AUTOINCREMENT, cantidadFinal integer, total double, periodo text)');
        await db.execute('CREATE TABLE inventProduc (idInventProduc INTEGER PRIMARY KEY AUTOINCREMENT, estado text, cantidad integer, totalProduc double,idInventario integer,idProducto integer, FOREIGN KEY(idInventario) REFERENCES inventario(idInventario), FOREIGN key(idProducto) REFERENCES producto(idProducto))');
        testData.forEach((element) async{
          await db.rawQuery('insert INTO producto(nombre,codigo,precioCaja,precioUnitario) VALUES("${element['nombre']}","${element['codigo']}",${element['precioCaja']},${element['precioUnitario']})');
        });
      }
  );
  // print(await db.query('producto',columns: ['nombre','codigo','precioCaja','precioUnitario']));
  return db.query('producto',columns: ['nombre','codigo','precioCaja','precioUnitario']) ;
}
