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
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                child: const Text('Grossbasel',
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
              SizedBox(height: 10),
              GestureDetector(
                  child: Card(
                      elevation: 10,
                      child: ListTile(
                        leading: Icon(Icons.map_outlined),
                        tileColor: Colors.lightBlueAccent[100],
                        title: Text(
                          'Interactive Map',
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
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 2.0,
              ),
              delegate: SliverChildListDelegate([
                Card(
                  child: Text('hi')),
                Card(
                  child: Text('hi'),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
