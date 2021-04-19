import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActualProductWidget extends StatefulWidget {
  Map _productoActual;
  Function(Map) _changeInveProduct;
  ActualProductWidget(this._productoActual, this._changeInveProduct,{ Key key }) : super(key: key);
  @override
  _ActualProductWidgetState createState() => _ActualProductWidgetState(this._productoActual,this._changeInveProduct);
}

class _ActualProductWidgetState extends State<ActualProductWidget> {
  _ActualProductWidgetState(Map productoActual, Function(Map) changeInveProduct);

  // Map _productoActual;
  // int index;
  // _ActualProductWidgetState(this._productoActual,this.index);


  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController(text: widget._productoActual['cantidad']!=0?widget._productoActual['cantidad'].toString():'');
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB( 25, 10, 25, 0),
        child:Column(
          children: [
            Text(widget._productoActual['nombre']),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Cantidad',
              ),
              keyboardType: TextInputType.number,

              textAlign: TextAlign.center,
              controller:myController ,
              // onEditingComplete:  (){
              //   print('edited');
              // },
              onEditingComplete: (){
                print(myController.text);
                Map tempProduct = widget._productoActual;
                tempProduct['cantidad']=int.parse(myController.text);
                widget._changeInveProduct(tempProduct);
                FocusScope.of(context).requestFocus(FocusNode());
              },
            ),
          ],
        ),
      ),
    );
  }
}