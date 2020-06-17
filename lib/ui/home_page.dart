import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:moordor/data/moor_database.dart';
import 'arbol.dart';
import 'edittree.dart';
import 'newtree.dart';
import 'package:connectivity/connectivity.dart';

class HomePage extends StatefulWidget {
  @override 
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  Future<Album> futureAlbum;
  int value;

  @override 
  initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  // var connectivityResult = await (Connectivity().checkConnectivity());
  //   if (connectivityResult == ConnectivityResult.mobile) {
  //     print('mobile internet!');
  //   } else if (connectivityResult == ConnectivityResult.wifi) {
  //     print('internet!');
  //   }
  
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Types'),
          backgroundColor: Colors.green,
        ),
        body: RefreshIndicator(
          child: Column(
            children: <Widget>[
              Expanded(child: _buildTreeList(context))
            ]
          ),
          onRefresh: refreshDatabase,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTree(),
            ),
          );
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white38,
        ),
      );
    }  

    StreamBuilder<List<Tree>> _buildTreeList(BuildContext context) {
      final database = Provider.of<AppDatabase>(context);
      return StreamBuilder(
        stream: database.watchAllTrees(),
        builder: (context, AsyncSnapshot<List<Tree>> snapshot) {
          final trees = snapshot.data ?? List();
  
          return ListView.builder(
            itemCount: trees.length,
            itemBuilder: (_, index) {
              final itemTree = trees[index];
                return _buildListItem(itemTree, database, index, context);
            }
          );
        }
      );
    }
  
    Widget _buildListItem(Tree itemTree, AppDatabase database, int index, context) {
      return Slidable(
        closeOnScroll: true,
        actionPane: SlidableDrawerActionPane(),
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () => database.updateTree(itemTree.copyWith(deleted: true))
          ),
          IconSlideAction(
            caption: 'Edit',
            color: Colors.blue[900],
            icon: Icons.edit,
            onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditTree(value: index),
                ),
              );
            }
          ),
        ],
        child: FlatButton(
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Arbol(value: index),
              ),
            );
          },
          child: Text(itemTree.type)
        )
      );
    }
    
    Future<void> refreshDatabase() async {

    await Future.delayed(Duration(seconds: 2));

    final database = Provider.of<AppDatabase>(context);

    StreamBuilder(
    stream: database.watchAllTrees(),
    builder: (context, AsyncSnapshot<List<Tree>> snapshot) {
      final trees = snapshot.data ?? List();
      return FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {

          var localtreeids = [];
          var localdates = [];

          if (snapshot.hasData) {
            for(var i = 0; i < trees.length; i++) {
              localtreeids.add(trees[i].treeid);
              localdates.add(trees[i].lastupdate);
            }

            var cloudtreeids = [];
            var clouddates = [];

            for(var i = 0; i < snapshot.data.clouddblength; i++) {
              cloudtreeids.add(snapshot.data.treeid[i]);
              clouddates.add(snapshot.data.lastupdate[i]);
            }
            
            var localtoadd = [];
            var cloudtoadd = [];

            localtreeids.forEach((element) {
              if(!cloudtreeids.contains(element)){
              } else {localtoadd.add(element);}
            });

            cloudtreeids.forEach((element) {
              if(!localtreeids.contains(element)){
              } else {cloudtoadd.add(element);}
            });

            for(var i = 0; i < localtoadd.length; i++) {
              int index = localtreeids.indexWhere((treeid) => treeid == cloudtoadd[i]);
              Tree cloudupdate = Tree(
                treeid: snapshot.data.treeid[index],
                type: snapshot.data.type[index],
                ground: snapshot.data.ground[index],
                trunk: snapshot.data.trunk[index],
                height: snapshot.data.height[index],
                top: snapshot.data.top[index],
                diameter: snapshot.data.diameter[index],
                longevity: snapshot.data.longevity[index],
                recolection: snapshot.data.recolection[index],
                spread: snapshot.data.spread[index],
                seed: snapshot.data.seed[index],
                seedtreatment: snapshot.data.seedtreatment[index],
                lastupdate: DateTime.now(),
                deleted: false
              );

            database.insertTree(cloudupdate);
            print('yah');
            }

          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          // By default, show a loading spinner.
          return CircularProgressIndicator();
          });
        }
      );
      return null;
    }
    // await(Future<ConnectivityResult> checkConnectivity) {}
}

Future<Album> fetchAlbum() async {
  var http;
  final response = await http.get('https://script.google.com/macros/s/AKfycbySQzDSMzW2PXDSeR4UG7QvrItJgXBHXZ1sDU44zqYs9nkj96I/exec');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final List<String> treeid;
  final List<String> lastupdate;
  final List<String> type;
  final List<String> ground;
  final List<String> trunk;
  final List<String> height;
  final List<String> top;
  final List<String> diameter;
  final List<String> longevity;
  final List<String> recolection;
  final List<String> spread;
  final List<String> seed;
  final List<String> seedtreatment;
  final int clouddblength;

  Album({this.treeid, this.lastupdate, this.clouddblength, this.type, this.ground, this.trunk, this.height, this.top, this.diameter, this.longevity, this.recolection, this.spread, this.seed, this.seedtreatment,});

  factory Album.fromJson(Map<String, dynamic> json) {
    var treeid = json['treeid'];
    var lastupdate = json['lastupdate'];
    var type = json['type'];
    var ground = json['ground'];
    var trunk = json['trunk'];
    var height = json['height'];
    var top = json['top'];
    var diameter = json['diameter'];
    var longevity = json['longevity'];
    var recolection = json['recolection'];
    var spread = json['spread'];
    var seed = json['seed'];
    var seedtreatment = json['seedtreatment'];

    List<String> treeidlist = treeid.cast<String>();
    List<String> lastupdatelist = lastupdate.cast<String>();
    List<String> typelist = type.cast<String>();
    List<String> groundlist = ground.cast<String>();
    List<String> trunklist = trunk.cast<String>();
    List<String> heightlist = height.cast<String>();
    List<String> toplist = top.cast<String>();
    List<String> diameterlist = diameter.cast<String>();
    List<String> longevitylist = longevity.cast<String>();
    List<String> recolectionlist = recolection.cast<String>();
    List<String> spreadlist = spread.cast<String>();
    List<String> seedlist = seed.cast<String>();
    List<String> seedtreatmentlist = seedtreatment.cast<String>();

    return new Album(
      treeid: treeidlist, 
      lastupdate: lastupdatelist,
      type: typelist,
      ground: groundlist,
      trunk: trunklist,
      height: heightlist,
      top: toplist,
      diameter: diameterlist,
      longevity: longevitylist,
      recolection: recolectionlist,
      spread: spreadlist,
      seed: seedlist,
      seedtreatment: seedtreatmentlist,
      clouddblength: treeidlist.length
    );
  }
}