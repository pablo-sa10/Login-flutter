import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';

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
        leading: Builder(builder: (context) {
          return TextButton(
              child: Image.asset(
                "assets/user-picture.png",
                fit: BoxFit.cover,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
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
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: const EdgeInsets.only(bottom: 20),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFFF58524),
                Color(0xFFF92B7F),
              ])),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: const Alignment(0.0, 1.4),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/user-picture.png"),
                          fit: BoxFit.fitHeight)),
                  child: Container(
                    height: 36,
                    width: 46,
                    //alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(56)),
                    child: TextButton(
                      onPressed: () {},
                      child: const SizedBox(
                          child: Icon(
                        Icons.camera_alt_outlined,
                      )),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Perfil'),
              trailing: Icon(Icons.person),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Configurações'),
              trailing: Icon(Icons.settings),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Sair'),
              trailing: Icon(Icons.output),
              onTap: () {
                sair(context);
              },
            ),
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

void sair(BuildContext context) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => Login()));
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
