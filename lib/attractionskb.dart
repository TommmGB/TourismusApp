import 'package:flutter/material.dart';

class AttractionsKB extends StatelessWidget {
  const AttractionsKB({super.key});

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
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                child: const Text('Kleinbasel',
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blue,
                    )),
              ),
              const Divider(
                thickness: 2,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Homepage');
                  },
                  child: Card(
                      elevation: 10,
                      child: ListTile(
                        tileColor: Colors.lightBlueAccent[100],
                        leading: const Icon(Icons.home_outlined),
                        title: const Text(
                          'Homepage',
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 25,
                              color: Colors.purple),
                        ),
                      ))),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/b');
                  },
                  child: Card(
                      elevation: 10,
                      child: ListTile(
                        tileColor: Colors.lightBlueAccent[100],
                        leading: const Icon(Icons.location_on_outlined),
                        title: const Text(
                          'Grossbasel',
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 25,
                              color: Colors.purple),
                        ),
                      ))),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/g');
                  },
                  child: Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Icon(Icons.tram_outlined),
                        tileColor: Colors.lightBlueAccent[100],
                        title: const Text(
                          'Public Transport',
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 25,
                              color: Colors.purple),
                        ),
                      ))),
              const SizedBox(height: 10),
              GestureDetector(
                  child: Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Icon(Icons.map_outlined),
                        tileColor: Colors.lightBlueAccent[100],
                        title: const Text(
                          'Interactive Map',
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 25,
                              color: Colors.purple),
                        ),
                      ))),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Homepage');
                  },
                  child: Card(
                      elevation: 10,
                      child: ListTile(
                        leading: const Icon(Icons.arrow_back_outlined),
                        tileColor: Colors.greenAccent[200],
                        title: const Text(
                          'Return to last page',
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
            const SliverAppBar(
              iconTheme: IconThemeData(color: Colors.black),
              forceElevated: false,
              snap: false,
              pinned: true,
              floating: false,
              expandedHeight: 150,
              backgroundColor: Color.fromRGBO(180, 220, 144, 1.0),
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Discover Kleinbasel!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 1.0),
                      fontSize: 20,
                    )),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 0,
                crossAxisSpacing: 10,
                childAspectRatio: 2.0,
              ),
              delegate: SliverChildListDelegate([
                Stack(children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/d');
                      },
                      child: SizedBox(
                          height: 300,
                          width: 400,
                          child: Card(
                              borderOnForeground: true,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(5),
                                      topRight: Radius.circular(5)),
                                  side: BorderSide(
                                      width: 3, color: Colors.black)),
                              child: Image.network(
                                  'https://www.visit.alsace/wp-content/uploads/lei/pictures/252002085-tinguely-museum-1.jpg',
                                  fit: BoxFit.cover)))),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 2),
                      child: const Card(
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                              side: BorderSide(width: 1, color: Colors.black)),
                          color: Colors.lightBlueAccent,
                          child: Text("Tinguely Museum",
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 25,
                                  color: Colors.purple))))
                ]),
                Stack(children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/e');
                      },
                      child: SizedBox(
                          height: 300,
                          width: 400,
                          child: Card(
                              borderOnForeground: true,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(5),
                                      topRight: Radius.circular(5)),
                                  side: BorderSide(
                                      width: 3, color: Colors.black)),
                              child: Image.network(
                                  'https://www.zum.de/Faecher/G/BW/Landeskunde/rhein/kultur/museen/beyeler/eingangsbereich.jpg',
                                  fit: BoxFit.cover)))),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 2),
                      child: const Card(
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                              side: BorderSide(width: 1, color: Colors.black)),
                          color: Colors.lightBlueAccent,
                          child: Text("Fondation Beyeler",
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 25,
                                  color: Colors.purple))))
                ]),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
