import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Homework'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  bool isPressedLike = false;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite),
                  color: (isPressedLike) ? Colors.red : Colors.black,
                  onPressed: () {
                    setState(() {
                      isPressedLike = !isPressedLike;
                    });
                  },
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(isPressedLike ? 'Liked' : 'Like'),
                const SizedBox(
                  width: 50,
                ),
                const Icon(Icons.comment),
                const SizedBox(
                  width: 12,
                ),
                const Text("Comment"),
                const SizedBox(
                  width: 50,
                ),
                const Icon(Icons.share),
                const SizedBox(
                  width: 12,
                ),
                const Text("Share"),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  height: 150,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'currentCounter is: $_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
