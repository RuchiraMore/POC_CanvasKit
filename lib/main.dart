import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Text POC',
      theme: ThemeData.dark(),
      home: Dashboard()
    );
  }
}
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search Text")),
      body: Column(
        children: [
          Center(child: Column(
            children: [
              const SelectableText("HI this is Flutter dev - r c h - SelectableText",
                enableInteractiveSelection: true,
              ),
              const SelectableText("HI this is Flutter dev - SelectableText",
                  toolbarOptions: ToolbarOptions(
                  copy: true,
                  selectAll: true,
                  cut: false,
                  paste: false
              )),
              Html(data:"put any text - Html"),
              const Text("HI this is Flutter dev - text widget"),
              const SelectableText("HI this is Android dev - r c h - SelectableText"),
              ///for check Copy Paste in Browser
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term'
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

