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
                    Navigator.pushNamed(context, '/a');
                  },
                  child: Card(
                      elevation: 10,
                      child: ListTile(
                        tileColor: Colors.lightBlueAccent[100],
                        leading: const Icon(Icons.location_on_outlined),
                        title: const Text(
                          'Kleinbasel',
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
                        tileColor: Colors.greenAccent[100],
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
              backgroundColor: Color.fromRGBO(100, 180, 240, 1.0),
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Discover Grossbasel!",
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
                        Navigator.pushNamed(context, '/c');
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
                                      width: 5, color: Colors.black)),
                              child: Image.network(
                                  'https://www.baselferien.ch/bcwa/wp-content/gf-uploads/2018/02/basler-muenster-basel-09.jpg',
                                  fit: BoxFit.cover)))),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: const Card(
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                              side: BorderSide(width: 1, color: Colors.black)),
                          color: Colors.lightBlueAccent,
                          child: Text("Basler Münster",
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 25,
                                  color: Colors.purple))))
                ]),
                Stack(children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/f');
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
                                      width: 5, color: Colors.black)),
                              child: Image.network(
                                  'https://www.nmbs.ch/.imaging/mte/nmb-theme/1180px-1xRes/dam/Bilder-Website/Home/Ausstellungen/Dauerausstellungen/2_2_4_mammut_saebelzahntiger/JPEG_1180/2_2_4_mammut_saebelzahntiger_3257.jpg/jcr:content/2_2_4_mammut_saebelzahntiger_3257.jpg',
                                  fit: BoxFit.cover)))),
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: const Card(
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                              side: BorderSide(width: 1, color: Colors.black)),
                          color: Colors.lightBlueAccent,
                          child: Text("Naturhistorisches Museum ",
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
