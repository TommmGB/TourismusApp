import 'package:flutter/material.dart';

class AttractionsGB extends StatelessWidget {
  const AttractionsGB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.orangeAccent[100],
          child: ListView(
            children: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: const Text('Tour de Bâle',
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue,
                    )),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 54),
                child: const Text('Your guide through Basel',
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 25,
                      color: Colors.blue,
                    )),
              ),
              const Divider(
                thickness: 2,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),
              SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Homepage');
                  },
                  child: Card(
                      elevation: 10,
                      child: ListTile(
                        tileColor: Colors.lightBlueAccent[100],
                        leading: Icon(Icons.location_on_outlined),
                        title: Text(
                          'Homepage',
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 25,
                              color: Colors.purple),
                        ),
                      ))),
              SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/a');
                  },
                  child: Card(
                      elevation: 10,
                      child: ListTile(
                        tileColor: Colors.lightBlueAccent[100],
                        leading: Icon(Icons.location_on_outlined),
                        title: Text(
                          'Kleinbasel',
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 25,
                              color: Colors.purple),
                        ),
                      ))),
              SizedBox(height: 10),
              GestureDetector(
                  child: Card(
                      elevation: 10,
                      child: ListTile(
                        leading: Icon(Icons.tram_outlined),
                        tileColor: Colors.lightBlueAccent[100],
                        title: Text(
                          'Public Transport',
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 25,
                              color: Colors.purple),
                        ),
                      ))),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              iconTheme: IconThemeData(color: Colors.black),
              forceElevated: false,
              snap: false,
              pinned: true,
              floating: false,
              expandedHeight: 150,
              backgroundColor: Colors.orangeAccent[200],
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Discover Grossbasel!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 1.0),
                      fontSize: 20,
                    )),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Stack(
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/a');
                          },
                          child: SizedBox(
                              height: 230,
                              width: 400,
                              child: Image.network(
                                  'https://cdn.tomas-travel.com/tds/repository/TDS00020012496817936/TDS00020010010367324/TDS00020013696921880_sized_800_0.jpg',
                                  fit: BoxFit.cover))),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        child: const Card(
                            color: Colors.lightBlueAccent,
                            child: Text("Basler Münster",
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Colors.purple))),
                      ),
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
