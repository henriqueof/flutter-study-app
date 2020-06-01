import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline6: TextStyle(fontSize: 24.0, color: Colors.white),
            bodyText1: TextStyle(fontSize: 16.0, color: Colors.white),
            bodyText2: TextStyle(fontSize: 16.0, color: Colors.red),
          )),
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
  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 64.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF282958),
              Color(0xFF030416),
            ],
            stops: [
              0.4,
              0.9,
            ],
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.apps,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print("Settings");
                    },
                  ),
                  Text(
                    'HelloVPN',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.group_work,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print("Location");
                    },
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 72.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Status: ',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        'Not connected',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ]),
              ),
              Container(
                margin: const EdgeInsets.only(top: 24.0),
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(180),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF381DFA).withAlpha(20),
                        blurRadius: 12.0,
                        spreadRadius: 0.5,
                        offset: Offset(
                          0,
                          3,
                        ),
                      ),
                    ]),
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(180),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFA29AFC),
                          Color(0xFF381DFA),
                        ],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(180),
                          color: Color(0xFF282958),
                        ),
                        child: Container(
                          width: 180,
                          height: 180,
                          padding: const EdgeInsets.all(48.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.power_settings_new,
                                size: 64,
                                color: Color(0xFFA29AFC),
                              ),
                              Text(
                                'START',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 72.0),
                child: Column(
                  children: <Widget>[
                    Text('Select Location',
                        style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
