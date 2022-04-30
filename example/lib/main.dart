import 'package:flutter/material.dart';
import 'package:reveal_card/reveal_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reveal Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Reveal Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RevealCard(
          height: 350,
          width: 350,
          title: const Text(
            'HP Laptop',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          revealIcon: const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          actionButton: FloatingActionButton(
            backgroundColor: Colors.redAccent,
            onPressed: () {},
            child: const Icon(Icons.add_shopping_cart),
          ),
          backgroundImage: const NetworkImage(
              'https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'),
          content: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Company', style: TextStyle(color: Colors.white, fontSize: 18)),
                Expanded(
                  child: Text(
                    'SAMSUNG',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Price', style: TextStyle(color: Colors.white, fontSize: 18)),
                Expanded(
                  child: Text(
                    '\$ 1349',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Rating', style: TextStyle(color: Colors.white, fontSize: 18)),
                Expanded(
                  child: Text(
                    '4.6',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Processor', style: TextStyle(color: Colors.white, fontSize: 18)),
                Expanded(
                  child: Text(
                    'Intel',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('RAM', style: TextStyle(color: Colors.white, fontSize: 18)),
                Expanded(
                  child: Text(
                    '16 GB',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('RAM Type', style: TextStyle(color: Colors.white, fontSize: 18)),
                Expanded(
                  child: Text(
                    'DDR4',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Storage', style: TextStyle(color: Colors.white, fontSize: 18)),
                Expanded(
                  child: Text(
                    '512 GB',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Color', style: TextStyle(color: Colors.white, fontSize: 18)),
                Expanded(
                  child: Text(
                    'Grey',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ],
          revealBackgroundImage: const NetworkImage(
              'https://images.unsplash.com/photo-1603302576837-37561b2e2302?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1468&q=80'),
          revealCloseIcon: const Icon(Icons.close, color: Colors.white),
          revealTitle: const Text(
            'Specifications',
            style: TextStyle(fontSize: 26, color: Colors.white),
          ),
          revealContent: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'OS',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'Windows 11',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Hard Drive',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'SSD',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Color',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'Graphite',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Resolution',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  '1918 x 1080',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Item Weight',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  '2.45 pounds',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Power Source',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'Battery Power',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Wireless Type',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'Bluetooth',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Chipset Brand',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'Intel',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Card Description',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  'Integrated',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
