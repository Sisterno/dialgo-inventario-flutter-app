import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListaInveWidget extends StatefulWidget {
  final List<Map> _inventario;
  final Function(Map) _selectProduct;
  final Map _productState;
  ListaInveWidget(this._inventario,this._selectProduct,this._productState,{ Key key }) : super(key: key);
  @override
  _ListaInveWidgetState createState() => _ListaInveWidgetState(this._inventario,this._selectProduct,this._productState);
}

class _ListaInveWidgetState extends State<ListaInveWidget> {
  _ListaInveWidgetState(List<Map> inventario, Function(Map p1) selectProduct,Map productState);


  // final List<Map> _inventario;
  // final Function(Map) selectProduct;
  // _ListaInveWidgetState(this._inventario,this.selectProduct);

  @override
  Widget build(BuildContext context) {
    // try{
    //   Map x = widget._inventario.firstWhere((element) => element['nombre'] == widget._productState['nombre']);
    //   widget._inventario[widget._inventario.indexOf(x)]= widget._productState;
    // }
    // catch(e){
    //   print(e);
    // }
    return DataTable(
        columns: const [
          DataColumn(
            label: Text('Producto'),
          ),
          DataColumn(
            label: Text('Cantidad'),
          ),
          DataColumn(
            label: Text('Unidad'),
          ),
        ],
        rows: (widget._inventario != null?
            widget._inventario.map((e) =>
            DataRow(
              cells: [
                DataCell(Text(e['nombre'])),
                DataCell(Text(e['cantidad'].toString())),
                DataCell(Text('Cajas')),
              ],
              onSelectChanged: (bool selec) {
                this.widget._selectProduct(e);
              },
            ))
            .toList()
            :
            [DataRow(
              cells: [
                DataCell(Text('Cajas')),
                DataCell(Text('Cajas')),
                DataCell(Text('Cajas')),
              ],
            )])
    );
  }
}