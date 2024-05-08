import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("assets/app-logo.png"),
          ),
        ),
        leading: Builder(
          builder: (context) {
            return TextButton(
                child: Image.asset("assets/user-picture.png", fit: BoxFit.cover,),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          }
        ),
        actions: [
          SizedBox(
            width: 60,
            child: TextButton(
                onPressed: () => {},
                child: const Icon(Icons.search, color: Color(0xFFBABABA))),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: const [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.amberAccent),
                child: Column())
          ],
        ),
      ),
      body: Container(
        color: const Color(0xFFF2F3F6),
        child: ListView(
          children: [
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const ListTile(
          leading: Icon(Icons.album),
          title: Text("Bruce Wayne"),
          subtitle: Text("10/01/2020 15:40"),
          trailing: Icon(Icons.more_vert),
        ),
        Image.asset("assets/post-picture-001.png"),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            "Ai Chavinho",
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonTheme(
          child: ButtonBar(
            children: [
              TextButton(
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
              TextButton(
                child: const Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    ),
  );
}
