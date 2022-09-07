import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(180, 199, 196, 0.8),
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('Explore Basel Today!',
              style: TextStyle(
                  fontFamily: 'Nunito', fontSize: 30, color: Colors.blue))),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: const Text('Tour de Bâle:',
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
                    color: Colors.lightBlue,
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
                  tileColor: Color.fromRGBO(180, 190, 200, 0.8),
                  leading: Icon(Icons.location_on_outlined),
                  title: Text(
                    'Kleinbasel',
                    style: TextStyle(
                        fontFamily: "Nunito", fontSize: 25, color: Colors.blue),
                  ),
                ))),
            GestureDetector(
                child: const Card(
                    child: ListTile(
              leading: Icon(Icons.location_on_outlined),
              tileColor: Color.fromRGBO(180, 190, 200, 0.8),
              title: Text(
                'Grossbasel',
                style: TextStyle(
                    fontFamily: "Nunito", fontSize: 25, color: Colors.blue),
              ),
            ))),
            GestureDetector(
                child: const Card(
                    child: ListTile(
              leading: Icon(Icons.tram_outlined),
              tileColor: Color.fromRGBO(180, 190, 200, 0.8),
              title: Text(
                'Public Transport',
                style: TextStyle(
                    fontFamily: "Nunito", fontSize: 25, color: Colors.blue),
              ),
            ))),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                size: 35,
              ),
              tileColor: Color.fromRGBO(180, 200, 170, 1.0),
              title: Text('Locations',
                  style: TextStyle(
                      fontFamily: "Nunito",
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text("Kleinbasel",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 25,
                          color: Colors.purple)),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                GestureDetector(
                    child: Image.network(
                        'https://flatfox.ch/media/medialibrary/2019/05/Munster_858x483px.jpg',
                        fit: BoxFit.cover)),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text("Grossbasel",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 25,
                          color: Colors.purple)),
                ),
              ],
            ),
            const ListTile(
              leading: Icon(
                Icons.navigation,
                size: 35,
              ),
              tileColor: Color.fromRGBO(180, 200, 170, 1.0),
              title: Text('Navigation',
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 30,
                      color: Colors.purple)),
            ),
            Stack(
              children: <Widget>[
                GestureDetector(
                    child: Image.network(
                        'https://www.bvb.ch/de/wp-content/uploads/sites/2/2022/05/Flexity.png',
                        fit: BoxFit.cover)),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text("Public Transport",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 25,
                          color: Colors.purple)),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                GestureDetector(
                    child: Container(
                        height: 160,
                        width: 400,
                        child: Image.network(
                            'https://map.viamichelin.com/map/carte?map=viamichelin&z=10&lat=47.55961&lon=7.58061&width=550&height=382&format=png&version=latest&layer=background&debug_pattern=.*',
                            fit: BoxFit.cover))),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text("Interactive Map",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 25,
                          color: Colors.purple)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
