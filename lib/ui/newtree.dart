import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:moordor/data/form.dart';
import 'package:moordor/data/form.dart';
import 'package:moordor/data/moor_database.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'package:uuid/uuid.dart';

class AddTree extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final database = Provider.of<AppDatabase>(context);
    var uuid = Uuid();
    var _formResult = ['',  '',  '', 0, '',  0,  0,  '',  '', '',  ''];
    final empty = '';
    var treeid = '';
    var treetype = '';
    var imagetree = '';
    var ground = '';
    var trunk = '';
    var height = '';
    var top = '';
    var diameter = '';
    var longevity = '';
    var recolection = '';
    var area = '';
    var spread = '';
    var seed = '';
    var seedimage = '';
    var seedtreatment = '';
    var action = '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Tree'),
      ),
      body: ListView(
        children: <Widget>[
          FormBuilder(
            key: _formKey,
            autovalidate: true,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Tipo de arbol',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    ),
                  initialValue: empty,
                  validator: (valuearbol) {
                  if (valuearbol.isEmpty) {
                    return 'Porfavor escriba el tipo de arbol';
                  }
                  _formResult[0] = valuearbol;
                  }
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Tipo de tierra',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    ),
                  initialValue: empty,
                  validator: (valuetierra) {
                  if (valuetierra.isEmpty) {
                    return 'Porfavor escriba el tipo de tierra';
                  }
                  _formResult[1] = valuetierra;
                  }
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Tipo de tronco',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    ),
                  initialValue: empty,
                  validator: (valuetronco) {
                  if (valuetronco.isEmpty) {
                    return 'Porfavor escriba el tipo de tronco';
                  }
                  _formResult[2] = valuetronco;
                  }
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Altura del arbol (metros)',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    ),
                  initialValue: empty,
                  validator: (valuealtura) {
                  if (valuealtura.isEmpty) {
                    return 'Porfavor escriba la altura del arbol en metros';
                  }
                  _formResult[3] = valuealtura;
                  }
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Tipo de copa',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],),
                  initialValue: empty,
                  validator: (valuecopa) {
                  if (valuecopa.isEmpty) {
                    return 'Porfavor escriba el tipo de copa';
                  }
                  _formResult[4] = valuecopa;
                  }
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Diametro del arbol',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200]),
                  initialValue: empty,
                  validator: (valuediametro) {
                  if (valuediametro.isEmpty) {
                    return 'Porfavor escriba el diametro del arbol en metros';
                  }
                  _formResult[5] = valuediametro;
                  }
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Longevidad del arbol',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],),
                  initialValue: empty,
                  validator: (valuelongevidad) {
                  if (valuelongevidad.isEmpty) {
                    return 'Porfavor escriba la longevidad del arbol';
                  }
                  _formResult[6] = valuelongevidad;
                  }
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Recolección',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],),
                  initialValue: empty,
                  validator: (valuerecoleccion) {
                  if (valuerecoleccion.isEmpty) {
                    return 'Porfavor escriba la zona de recoleccion';
                  }
                  _formResult[7] = valuerecoleccion;
                  }
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Propagación',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200]),
                  initialValue: empty,
                  validator: (valuepropagacion) {
                  if (valuepropagacion.isEmpty) {
                    return 'Porfavor escriba la propagación';
                  }
                  _formResult[8] = valuepropagacion;
                  }
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Semilla',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],),
                  initialValue: empty,
                  validator: (valuesemilla) {
                  if (valuesemilla.isEmpty) {
                    return 'Porfavor escriba el nombre de la semilla';
                  }
                  _formResult[9] = valuesemilla;
                  }
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Tratamiento de la semilla',
                    contentPadding: EdgeInsets.all(15.0),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],),
                  initialValue: empty,
                  validator: (valuetratamiento) {
                  if (valuetratamiento.isEmpty) {
                    return 'Porfavor escriba el tratamiento para la semilla';
                  }
                  _formResult[10] = valuetratamiento;
                  }
                ),
              ]
            )
          ),
          Row(
            children: <Widget>[
              MaterialButton(
                child: Text("Submit"),
                onPressed: () {
                  Tree _treeform = Tree(
                    treeid: uuid.v4(),
                    type: _formResult[0],
                    ground: _formResult[1],
                    trunk: _formResult[2],
                    height: _formResult[3],
                    top: _formResult[4],
                    diameter: _formResult[5],
                    longevity: _formResult[6],
                    recolection: _formResult[7],
                    spread: _formResult[8],
                    seed: _formResult[9],
                    seedtreatment: _formResult[10],
                    lastupdate: DateTime.now()
                  );
                database.insertTree(_treeform);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
            ]
          ),
        ]
      )
    );
  }
}