import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(210, 200, 170, 1.0),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: const Text('Tour de Bâle',
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 30,
                    color: Colors.blue,
                  )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: const Text('Your guide through Basel!',
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 20,
                    color: Colors.blue,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: Colors.grey,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/a');
                },
                child: const Card(
                    child: ListTile(
                  tileColor: Colors.lightBlue,
                  leading: Icon(Icons.location_on_outlined),
                  title: Text(
                    'Kleinbasel',
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 25,
                        color: Colors.purple),
                  ),
                ))),
            GestureDetector(
                child: const Card(
                    child: ListTile(
              leading: Icon(Icons.location_on_outlined),
              tileColor: Colors.lightBlue,
              title: Text(
                'Grossbasel',
                style: TextStyle(
                    fontFamily: "Nunito", fontSize: 25, color: Colors.purple),
              ),
            ))),
            GestureDetector(
                child: const Card(
                    child: ListTile(
              leading: Icon(Icons.tram_outlined),
              tileColor: Colors.lightBlue,
              title: Text(
                'Public Transport',
                style: TextStyle(
                    fontFamily: "Nunito", fontSize: 25, color: Colors.purple),
              ),
            ))),
          ],
        ),
      ),
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          snap: false,
          pinned: true,
          floating: false,
          expandedHeight: 150,
          backgroundColor: Colors.orangeAccent[400],
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsetsDirectional.all(40),
            title: const Text("Welcome to Basel",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontSize: 25,
                )),
            background: Image.network(
              "https://www.traveloffpath.com/wp-content/uploads/2021/07/Basel-night-time.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          const ListTile(
            leading: Icon(
              Icons.location_on_outlined,
              size: 35,
            ),
            tileColor: Color.fromRGBO(210, 200, 170, 1.0),
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
                  child: Image.network(
                      'https://www.roche.ch/dam/jcr:bd4ac037-4d20-4497-9a8f-5fec4bc8d320/BS_Areal%20-%20Cityview%20-%20740x416.jpg',
                      fit: BoxFit.cover)),
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
          const ListTile(
            leading: Icon(
              Icons.navigation,
              size: 35,
            ),
            tileColor: Color.fromRGBO(210, 200, 170, 1.0),
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
                  child: Image.network(
                      'https://www.bvb.ch/de/wp-content/uploads/sites/2/2022/05/Flexity.png',
                      fit: BoxFit.cover)),
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
                      height: 160,
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
