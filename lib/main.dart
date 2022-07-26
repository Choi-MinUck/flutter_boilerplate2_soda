import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff182949),
          title: const Text('SODA'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(13),
          children: <Widget>[
            const Card(
              shape: BeveledRectangleBorder(
                  side: BorderSide(
                      width: 0.5, color: Color.fromARGB(34, 0, 0, 26))),
              elevation: 0,
              child: ListTile(
                leading: Icon(Icons.airplay),
                title: Text(
                  'This is List tile',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('List tile 1',
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
            ),
            const Card(
              shape: BeveledRectangleBorder(
                  side: BorderSide(
                      width: 0.5, color: Color.fromARGB(34, 0, 0, 26))),
              elevation: 0,
              child: ListTile(
                leading: Icon(Icons.airplay),
                title:
                    Text('This is List tile', style: TextStyle(fontSize: 20)),
                subtitle: Text('List tile 2',
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
            ),
            const Card(
              shape: BeveledRectangleBorder(
                  side: BorderSide(
                      width: 0.5, color: Color.fromARGB(34, 0, 0, 26))),
              elevation: 0,
              child: ListTile(
                leading: Icon(Icons.airplay),
                title:
                    Text('This is List tile', style: TextStyle(fontSize: 20)),
                subtitle: Text('List tile 3',
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'TEXT BUTTON',
                      style: TextStyle(fontSize: 14, color: Color(0xff182949)),
                    ))),
            const SizedBox(
              height: 250,
            ),
            Align(
              alignment:
                  Alignment.bottomLeft, //이 코드는 작동하지 않는 듯 보인다. topLeft와 차이가 없다.
              child: Ink(
                  width: 40,
                  height: 40,
                  decoration: const ShapeDecoration(
                      color: Color(0xff182949), shape: CircleBorder()),
                  child: IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {},
                      color: const Color.fromARGB(255, 255, 255, 255))),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment:
                  Alignment.bottomLeft, //이 코드는 작동하지 않는 듯 보인다. topLeft와 차이가 없다.
              child: ButtonTheme(
                height: 40,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Outlined Button',
                    style: TextStyle(fontSize: 14, color: Color(0xff182949)),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: const Color(0xff182949),
                    backgroundColor: const Color(0xffFFE8E8),
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.white, width: 0.1),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(
                thickness: 1,
                color: Color(0xff182949),
              ),
              const SizedBox(
                height: 30,
                child: const Center(
                  child: Text(
                    'Copyright 2022 SODA All rights reserved.',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff99000000),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xff182949),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )),
        floatingActionButtonLocation: CustomFabLoc(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(24, 41, 73, 1),
                ),
                child: Text(
                  'SODA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Icon : favorite'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomFabLoc extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    return Offset(
      scaffoldGeometry.scaffoldSize.width * .80,
      scaffoldGeometry.scaffoldSize.height - kToolbarHeight - 60,
    );
  }
}
