import 'package:app_bar/count_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App Bar',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  final String title = 'Estatísticas';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.thumb_up_alt_rounded)),
              Tab(icon: Icon(Icons.thumb_down_alt_rounded)),
              Tab(icon: Icon(Icons.bookmark_border)),
            ],
          ),
          title: Center(
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            CountPage(text: 'Contagem de Likes'),
            CountPage(text: 'Contagem de Dislikes'),
            CountPage(text: 'Contagem de Salvos'),
          ],
        ),
      ),
    );
  }
}
