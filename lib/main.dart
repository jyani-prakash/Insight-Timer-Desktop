import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:macos_ui/macos_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MacosApp(
      home: MyHomePage(title: 'Insight Timer Desktop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 60,
            width: double.maxFinite,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Spacer(),
                MacosTooltip(
                  message: 'Welcome home',
                  child: Container(
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF272B2B),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    child: MacosIcon(
                      CupertinoIcons.home,
                      color: Color(0xFF272B2B),
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF272B2B),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: MacosIcon(
                    CupertinoIcons.tag,
                    color: Color(0xFF272B2B),
                    size: 15,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF272B2B),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: MacosIcon(
                    CupertinoIcons.ellipsis,
                    color: Color(0xFF272B2B),
                    size: 15,
                  ),
                ),
                const SizedBox(width: 10),
                Center(
                  child: Text(
                    getDateTime(),
                    style: TextStyle(
                      color: Color(0xFF272B2B),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Brandon Text",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }

  String getDateTime() {
    String dateTime = '';
    setState(() {
      DateTime now = DateTime.now();
      dateTime = DateFormat('EEEE d MMM kk:mm a').format(now);
    });
    return dateTime;
  }
}
