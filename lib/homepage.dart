import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.orangeAccent[100],
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
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
                onTap: () {
                  Navigator.pushNamed(context, '/b');
                },
                child: Card(
                    elevation: 10,
                    child: ListTile(
                      leading: Icon(Icons.location_on_outlined),
                      tileColor: Colors.lightBlueAccent[100],
                      title: Text(
                        'Grossbasel',
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
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          iconTheme: IconThemeData(color: Colors.black),
          forceElevated: false,
          snap: false,
          pinned: true,
          floating: false,
          expandedHeight: 200,
          backgroundColor: Colors.orangeAccent[200],
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Welcome to Basel",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontSize: 20,
                )),
            background: Image.network(
              "https://www.traveloffpath.com/wp-content/uploads/2021/07/Basel-night-time.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          ListTile(
            leading: Icon(
              Icons.location_on_outlined,
              size: 35,
            ),
            tileColor: Colors.orangeAccent[100],
            title: Text('Locations',
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.purple)),
          ),
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
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: const Card(
                    color: Colors.lightBlueAccent,
                    child: Text("Kleinbasel",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 25,
                            color: Colors.purple))),
              ),
            ],
          ),
          Stack(children: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/b');
                },
                child: Image.network(
                    'https://flatfox.ch/media/medialibrary/2019/05/Munster_858x483px.jpg',
                    fit: BoxFit.cover)),
            Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: const Card(
                    color: Colors.lightBlueAccent,
                    child: Text("Grossbasel",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 25,
                            color: Colors.purple)))),
          ]),
          ListTile(
            leading: Icon(
              Icons.navigation,
              size: 35,
            ),
            tileColor: Colors.orangeAccent[100],
            title: Text('Navigation',
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple)),
          ),
          Stack(
            children: <Widget>[
              GestureDetector(
                  child: SizedBox(
                      height: 230,
                      width: 400,
                      child: Image.network(
                          'https://www.bvb.ch/de/wp-content/uploads/sites/2/2022/05/Flexity.png',
                          fit: BoxFit.cover))),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: const Card(
                    color: Colors.lightBlueAccent,
                    child: Text("Public Transport",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 25,
                            color: Colors.purple))),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              GestureDetector(
                  child: SizedBox(
                      height: 230,
                      width: 400,
                      child: Image.network(
                          'https://map.viamichelin.com/map/carte?map=viamichelin&z=10&lat=47.55961&lon=7.58061&width=550&height=382&format=png&version=latest&layer=background&debug_pattern=.*',
                          fit: BoxFit.cover))),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: const Card(
                  color: Colors.lightBlueAccent,
                  child: Text("Interactive Map",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 25,
                          color: Colors.purple)),
                ),
              ),
            ],
          ),
        ])),
      ]),
    ));
  }
}
