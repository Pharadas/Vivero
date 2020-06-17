import 'package:flutter/material.dart';
import 'package:moordor/data/moor_database.dart';
import 'package:provider/provider.dart';

class Arbol extends StatelessWidget {
  final value;
  Arbol({this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _gettitle(context, value)
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: _buildTreeDescription(context, value)),
        ],
      ),
    );
  }

  StreamBuilder<List<Tree>> _buildTreeDescription(BuildContext context, int value) {
    final database = Provider.of<AppDatabase>(context);
    return StreamBuilder(
      stream: database.watchAllTrees(),
      builder: (context, AsyncSnapshot<List<Tree>> snapshot) {
        final trees = snapshot.data ?? List();
        print(trees);

        return ListView(
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Text('id --> ${trees[value].treeid}'),
            Text('ground --> ${trees[value].ground}'),
            Text('trunk --> ${trees[value].trunk}'),
            Text('height --> ${trees[value].height}'),
            Text('top --> ${trees[value].top}'),
            Text('diameter --> ${trees[value].diameter}'),
            Text('longevity --> ${trees[value].longevity}'),
            Text('recolection --> ${trees[value].recolection}'),
            Text('spread --> ${trees[value].spread}'),
            Text('seed --> ${trees[value].seed}'),
            Text('seedtreatment --> ${trees[value].seedtreatment}'),
          ],
        );
      }
    );
  }
}



StreamBuilder<List<Tree>> _gettitle(BuildContext context, int value) {
  print(value);
  final database = Provider.of<AppDatabase>(context);
  return StreamBuilder(
    stream: database.watchAllTrees(),
    builder: (context, AsyncSnapshot<List<Tree>> snapshot) {
      final trees = snapshot.data ?? List();

      return _displayType(trees, context, value);
    });
}

Widget _displayType(List trees, BuildContext context, int value) {
  return Text(trees[value].type);
}