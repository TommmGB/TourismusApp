import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri url = Uri.parse("https://www.nmbs.ch/home");
final Uri urs =
    Uri.parse("https://www.nmbs.ch/home/info_angebote/ihr-besuch.html");

class NaturHisMuseum extends StatelessWidget {
  const NaturHisMuseum({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.black),
                backgroundColor: Colors.orangeAccent[100],
                title: const Text('Naturhis. Museum ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Nunito',
                      fontSize: 30,
                    ))),
            bottomNavigationBar: BottomAppBar(
                color: Colors.orangeAccent[100],
                child: Row(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: IconButton(
                          icon: const Icon(Icons.arrow_back_outlined),
                          iconSize: 25,
                          onPressed: (() {
                            Navigator.pushNamed(context, '/c');
                          }))),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Previous',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 55),
                    child: Text('Next',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: IconButton(
                          icon: const Icon(Icons.arrow_forward_outlined),
                          iconSize: 25,
                          onPressed: () {
                            Navigator.pushNamed(context, 'Homepage');
                          })),
                ])),
            drawer: Drawer(
                backgroundColor: Colors.orangeAccent[100],
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      child: const Text('Naturhistorisches Museum Basel ',
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
                          Navigator.pushNamed(context, '/b');
                        },
                        child: Card(
                            elevation: 10,
                            child: ListTile(
                              leading: const Icon(Icons.arrow_back_outlined),
                              tileColor: Colors.greenAccent[100],
                              title: const Text(
                                'Return to overview',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Colors.purple),
                              ),
                            ))),
                  ],
                )),
            body: CustomScrollView(slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Naturhistorisches_Museum_Basel_Eingang2.jpg/800px-Naturhistorisches_Museum_Basel_Eingang2.jpg'),
                    Stack(children: [
                      const SizedBox(
                          height: 150,
                          width: 400,
                          child: Card(
                              elevation: 5,
                              color: Color.fromRGBO(205, 205, 205, 1.0))),
                      const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Text('Website:',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 5),
                          child: TextButton(
                              onPressed: () {
                                launchUrl(url);
                              },
                              child: const Text('nmbs.ch',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 25,
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue)))),
                    ]),
                    Stack(children: const [
                      SizedBox(
                          height: 350,
                          width: 400,
                          child: Card(
                              elevation: 5,
                              color: Color.fromRGBO(205, 205, 205, 1.0))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          child: Text('Description:',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 40, horizontal: 5),
                          child: Text(
                              "The Naturhistorisches Museum Basel in Grossbasel houses wide-ranging collections focused on fields such as zoology, entomology and paleontology. The museum is a heritage site of national significance and also displays special exhibitions.",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 25,
                                  color: Colors.black))),
                    ]),
                    Stack(
                      children: [
                        const SizedBox(
                            height: 570,
                            width: 400,
                            child: Card(
                                elevation: 5,
                                color: Color.fromRGBO(205, 202, 202, 1.0))),
                        const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            child: Text('Opening Times:',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))),
                        const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 50, horizontal: 5),
                            child: Text('Monday: Closed ',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 23,
                                    color: Colors.black))),
                        const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 90, horizontal: 5),
                            child: Text('Tuesday-Sunday: 10:00 - 17:00 ',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 23,
                                    color: Colors.black))),
                        const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 130, horizontal: 5),
                            child: Text('Special Opening Days: ',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 23,
                                    color: Colors.black))),
                        const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 170, horizontal: 5),
                            child: Text('New Year, Christmas (25.12), Easter',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 23,
                                    color: Colors.black))),
                        const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 210, horizontal: 5),
                            child: Text('Other Opening Times:',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 23,
                                    color: Colors.black))),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 250, horizontal: 5),
                            child: TextButton(
                                onPressed: () {
                                  launchUrl(urs);
                                },
                                child: const Text(
                                    'See: https://www.nmbs.ch/home/info_angebote/ihr-besuch',
                                    style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 23,
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue)))),
                      ],
                    ),
                    Stack(children: const [
                      SizedBox(
                          height: 500,
                          width: 400,
                          child: Card(
                              elevation: 5,
                              color: Color.fromRGBO(205, 202, 202, 1.0))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                          child: Text('Admission Fees:',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 40, horizontal: 5),
                          child: Text('Adults: 7 CHF ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 80, horizontal: 5),
                          child: Text('Students/In Education: 5 CHF ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 120, horizontal: 5),
                          child: Text('Below 20: 5 CHF',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 160, horizontal: 5),
                          child: Text('Below 13: Free ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 200, horizontal: 5),
                          child: Text(
                              'Free entry for people in need of protection, asylum seekers and temporarily admitted persons ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                    ]),
                    Stack(children: [
                      const SizedBox(
                          height: 280,
                          width: 400,
                          child: Card(
                              elevation: 5,
                              color: Color.fromRGBO(205, 202, 202, 1.0))),
                      const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                          child: Text('Address & Contact:',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))),
                      const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                          child: Text('Augustinergasse 2',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 60, horizontal: 5),
                          child: Text('CH-4051 Basel ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 90, horizontal: 5),
                          child: Text('Email: nmb@bs.ch ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 120, horizontal: 0),
                          child: TextButton(
                              onPressed: () {
                                // ignore: deprecated_member_use
                                launch("tel:// +41 61 266 55 00");
                              },
                              child: const Text('Tel +41 61 266 55 00',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 23,
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue)))),
                    ]),
                  ],
                ),
              ),
            ])));
  }
}
