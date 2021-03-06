
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardDosen extends StatefulWidget {
  DashboardDosen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DashboardDosenState createState() => _DashboardDosenState();
}

class _DashboardDosenState extends State<DashboardDosen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {}
          )
        ],
      ),

      body: Container(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Jongjek Widodo, S.Kom., M.T."),
                subtitle: Text("POI90UY6 - jongjek@staff.ukdw.ac.id"),
                // CARA 1
                // onLongPress: () {
                //   showDialog(
                //       context: context,
                //       builder: (_) => AlertDialog(
                //         content: Column(
                //           mainAxisSize: MainAxisSize.min,
                //           children: <Widget>[
                //             FlatButton(
                //                 onPressed: (){
                //                   Navigator.pop(context);
                //                 },
                //                 child: Text("Update")
                //             ),
                //             FlatButton(
                //                 onPressed: (){
                //                   Navigator.pop(context);
                //                 },
                //                 child: Text("Delete")
                //             ),
                //           ],
                //         ),
                //       )
                //   );
                // },
                // CARA 2
                trailing: PopupMenuButton(
                  itemBuilder: (_) => <PopupMenuItem<String>>[
                    new PopupMenuItem<String>(
                      child: const Text('Update'), value: 'Update',
                    ),
                    new PopupMenuItem<String>(
                      child: const Text('Delete'), value: 'Delete',
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Ir.Soekarno"),
                subtitle: Text("K9JUI8G5 - soek@staff.ukdw.ac.id"),
                trailing: PopupMenuButton(
                  itemBuilder: (_) => <PopupMenuItem<String>>[
                    new PopupMenuItem<String>(
                      child: const Text('Update'), value: 'Update',
                    ),
                    new PopupMenuItem<String>(
                      child: const Text('Delete'), value: 'Delete',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}