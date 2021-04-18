import 'dart:io';
import 'package:path/path.dart';
import 'package:excel/excel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

generarExcel(List<Map> inventario)async {
  Directory appDocDir = await getApplicationDocumentsDirectory();
  var excel = Excel.createExcel();
  await excel.setDefaultSheet('Inventario');
  String defaultText = await excel.getDefaultSheet();
  excel.updateCell(defaultText, CellIndex.indexByColumnRow(columnIndex: 0,rowIndex: 0),'Producto');
  excel.updateCell(defaultText, CellIndex.indexByColumnRow(columnIndex: 1,rowIndex: 0),'Cantidad');
  excel.updateCell(defaultText, CellIndex.indexByColumnRow(columnIndex: 2,rowIndex: 0),'Unidad');
  print(inventario);
  // int index =1;
  for(int i =0;i<inventario.length;i++){
    print(inventario[i]);
      excel.updateCell(defaultText, CellIndex.indexByColumnRow(columnIndex: 0,rowIndex: i+1),inventario[i]['nombre']);
      excel.updateCell(defaultText, CellIndex.indexByColumnRow(columnIndex: 1,rowIndex: i+1),inventario[i]['cantidad']);
      excel.updateCell(defaultText, CellIndex.indexByColumnRow(columnIndex: 2,rowIndex: i+1),'cajas');
  }
  // inventario.map((e){
  //   excel.updateCell('', CellIndex.indexByColumnRow(columnIndex: 0,rowIndex: index),e['nombre']);
  //   excel.updateCell('', CellIndex.indexByColumnRow(columnIndex: 1,rowIndex: index),e['cantidad']);
  //   excel.updateCell('', CellIndex.indexByColumnRow(columnIndex: 2,rowIndex: index),'cajas');
  //   index ++;
  // });
  // Sheet sheetObject = excel['Inventario'];

  // CellStyle cellStyle = CellStyle(backgroundColorHex: "#1AFF1A", fontFamily : getFontFamily(FontFamily.Calibri));

  // cellStyle.underline = Underline.Single; // or Underline.Double
  // sheetObject.insertRowIterables(inventario, 2);

  // var cell = sheetObject.cell(CellIndex.indexByString("A1"));
  // cell.value = 8; // dynamic values support provided;
  // cell.cellStyle = cellStyle;

  // printing cell-type
  // print("CellType: "+ cell.cellType.toString());
  print(appDocDir.path);
  excel.encode().then((onValue) {
    File(join(appDocDir.path+"/excel.xlsx"))
      ..createSync(recursive: true)
      ..writeAsBytesSync(onValue);
  }).then((value) => Share.shareFiles([appDocDir.path+"/excel.xlsx"]));
  
  
  // var sh = new Share();
  
}
