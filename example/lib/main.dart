import 'package:flutter/material.dart';
import 'package:sliver_fab/sliver_fab.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sliver Fab Example',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Builder(
        builder: (context) =>
        new SliverFab(
          floatingActionButton: new FloatingActionButton(
            onPressed: () =>
                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text("You clicked FAB!"))),
            child: new Icon(Icons.add),
          ),
          expandedHeight: 256.0,
          slivers: <Widget>[
            new SliverAppBar(
              expandedHeight: 256.0,
              pinned: true,
              flexibleSpace: new FlexibleSpaceBar(
                title: new Text("SliverFab Example"),
                background: new Image.asset(
                  "img.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new SliverList(
              delegate: new SliverChildListDelegate(
                new List.generate(
                  30,
                      (int index) =>
                  new ListTile(title: new Text("Item $index")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
