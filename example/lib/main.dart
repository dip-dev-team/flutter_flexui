import 'package:flutter/material.dart';
import 'package:flutter_flexui/widgets/flex_row.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FlexRow(
          colLg: 6,
          colMd: 3,
          colSm: 1,
          colMainAxisAlignment: MainAxisAlignment.spaceEvenly,
          colVerticalDirection: VerticalDirection.down,
          colMainAxisSize: MainAxisSize.max,
          rowMainAxisAlignment: MainAxisAlignment.spaceAround,
          rowVerticalDirection: VerticalDirection.down,
          rowMainAxisSize: MainAxisSize.max,


          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
             Text(
             "3"
            ),
             Text(
             "4"
            ),
             Text(  
             "5"
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}