import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:moordor/data/moor_database.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class EditTree extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  final value;

  EditTree({this.value});

  @override
  Widget build(BuildContext context) {

    var _formResult = ['',  '',  '', 0, '',  0,  0,  '',  '', '',  ''];

    final database = Provider.of<AppDatabase>(context);
    return StreamBuilder(
      stream: database.watchAllTrees(),
      builder: (context, AsyncSnapshot<List<Tree>> snapshot) {
        final trees = snapshot.data ?? List();
        final id = trees[value].id;
        final treeid = trees[value].treeid;
        return Scaffold(
          appBar: AppBar(
            title: Text('Edit Tree'),
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
                      initialValue: trees[value].type,
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
                      initialValue: trees[value].ground,
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
                      initialValue: trees[value].trunk,
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
                      initialValue: trees[value].height,
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
                      initialValue: trees[value].top,
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
                      initialValue: trees[value].diameter,
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
                      initialValue: trees[value].longevity,
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
                      initialValue: trees[value].recolection,
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
                      initialValue: trees[value].spread,
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
                      initialValue: trees[value].seed,
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
                      initialValue: trees[value].seedtreatment,
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
                        id: id, 
                        treeid: treeid,
                        lastupdate: DateTime.now()
                      );
                      database.updateTree(_treeform);
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
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
    );
  }
}