// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

dynamic _number = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get child => null;
  TextEditingController number_One = TextEditingController();
  TextEditingController number_Two = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('flutter demo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            Image.network(
              'https://cdn.tgdd.vn/Products/Images/9398/233263/may-tinh-khoa-hoc-thien-long-flexio-fx680vn-xanh-600x600.jpg',
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: number_One,
                decoration: InputDecoration(
                  labelText: 'Nhập số A',
                  hintText: 'one',
                ),
              ),
            ),
            Distance(),
            SizedBox(
              width: 200,
              child: TextField(
                controller: number_Two,
                decoration: InputDecoration(
                  labelText: 'Nhập số B',
                  hintText: 'two',
                ),
              ),
            ),
            Distance(),
            Text('Kết quả $_number'),
            Distance(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _number = int.parse(number_One.text) +
                          int.parse(number_Two.text);
                      setState(() {});
                    },
                    child: Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _number = int.parse(number_One.text) -
                          int.parse(number_Two.text);
                      setState(() {});
                    },
                    child: Text('-'),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _number = int.parse(number_One.text) *
                          int.parse(number_Two.text);
                      setState(() {});
                    },
                    child: Text('x'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _number = int.parse(number_One.text) /
                          int.parse(number_Two.text);
                      setState(() {});
                    },
                    child: Text('/'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Distance extends StatelessWidget {
  const Distance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
    );
  }
}
