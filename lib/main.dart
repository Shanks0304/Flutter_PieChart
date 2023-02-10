import 'package:flutter/material.dart';

import 'package:flutter_chart_demo/data/data_components.dart';
import 'package:flutter_chart_demo/data/sector.dart';

import 'package:flutter_chart_demo/pie_chart_widget.dart';
import 'package:flutter_chart_demo/bar_chart_widget.dart';
import 'package:flutter_spinbox/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chart',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Flutter Chart'),
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
  double salesValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SizedBox(
          width: 300,
          height: 300,
          child: Wrap(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            spacing: 0.0,
            runSpacing: 0.0,
            direction: Axis.horizontal,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                width: 150.0,
                child: SpinBox(
                    min: 0,
                    max: 100,
                    step: 5,
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat"),
                    decoration: InputDecoration(
                        labelText: "Sales%",
                        labelStyle: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat")),
                    spacing: 0.0,
                    onChanged: (value) => {
                          setState(() {
                            salesValue = value;
                          })
                        }),
              ),
              PieChartWidget(salesValue),
              Container(
                alignment: AlignmentDirectional.bottomCenter,
                child: Text(
                  "SALES%",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Copper"),
                ),
              )
            ],
          ),
        ));
  }
}
