import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'practice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyCustomHomepage(),
    );
  }
}

class MyCustomHomepage extends StatelessWidget {
  const MyCustomHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: 410,
      height: 210,
        margin: EdgeInsets.symmetric(vertical: 300),
        color: Colors.white,
          child: Row(
            children: [
              Container(
                height: 210,
                width: 130,
                margin: const EdgeInsets.fromLTRB(18, 0, 0, 20),
                child: Image.asset("assets/image/당근 카드뷰.jpg"),
              ),
              Container(
                height: 210,
                width: 235,
                margin: EdgeInsets.fromLTRB(15, 30, 0, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Expanded(child: Text("고디바 더블 초콜릿 소프트 아이스크림 1+1", style: TextStyle(color: Colors.black, fontSize: 25),),),
                        Text("⋮", style: TextStyle(color: Colors.grey, fontSize: 25),),
                      ],
                    ),
                    Text("마포구 아현동 · 16분 전", style: TextStyle(color: Colors.grey, fontSize: 19),),
                    Row(
                      children: [
                        Container(
                          height: 20, width: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), color: Colors.black54),
                          child: Text("  거래완료", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                        Text(" 9,000원", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),)
                      ],
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.forum_outlined, size: 20),
                        Text("1"),
                        Icon(Icons.favorite_border_outlined, size: 20),
                        Text("1"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}




class MyCustomhompage extends StatefulWidget {
  const MyCustomhompage({super.key});

  @override
  State<MyCustomhompage> createState() => _MyCustomhompageState();
}

class _MyCustomhompageState extends State<MyCustomhompage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


/*      class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}     */
