import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListaInveWidget extends StatefulWidget {
  final List<Map> _inventario;
  final Function(Map) _selectProduct;
  final List<bool> _productState;

  ListaInveWidget(this._inventario,this._selectProduct,this._productState,{ Key key }) : super(key: key);
  @override
  _ListaInveWidgetState createState() => _ListaInveWidgetState(this._inventario,this._selectProduct,this._productState);
}

class _ListaInveWidgetState extends State<ListaInveWidget> {
  _ListaInveWidgetState(List<Map> _inventario, Function(Map p1) selectProduct,List<bool> productState);
  @override
  Widget build(BuildContext context) {
    return DataTable(
       showCheckboxColumn: false,
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
              List<DataRow>.generate(
                  widget._inventario.length,
                  (int index)=> DataRow(
                    selected: widget._productState != null? widget._productState[index]:false,
                    color: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected))
                        return Theme.of(context).colorScheme.primary.withOpacity(0.50);
                      return null;  // Use the default value.
                    }),
                    cells: [
                      DataCell(Text(widget._inventario[index]['nombre'])),
                      DataCell(Text(widget._inventario[index]['cantidad'].toString())),
                      DataCell(Text('Cajas')),
                    ],
                    onSelectChanged: (bool selec) {
                      widget._productState[widget._productState.indexOf(true)==-1?0:widget._productState.indexOf(true)]=false;
                      widget._productState[index]=true;
                      this.widget._selectProduct(widget._inventario[index]);
                    },
                  )
              )
            // widget._inventario.map((e){
            //   i++;
            //   return DataRow(
            //     selected: selected[i],
            //     color: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
            //       if (states.contains(MaterialState.selected))
            //         return Theme.of(context).colorScheme.primary.withOpacity(0.10);
            //       return null;  // Use the default value.
            //     }),
            //     cells: [
            //       DataCell(Text(e['nombre'])),
            //       DataCell(Text(e['cantidad'].toString())),
            //       DataCell(Text('Cajas')),
            //     ],
            //     onSelectChanged: (bool selec) {
            //       selected[i]=true;
            //       this.widget._selectProduct(e);
            //     },
            //   );
            // })
            // .toList()
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