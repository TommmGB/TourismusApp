import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri url = Uri.parse("https://www.baslermuenster.ch/");

class BaslerMuenster extends StatelessWidget {
  const BaslerMuenster({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.black),
                backgroundColor: Colors.orangeAccent[100],
                title: const Text('Basler Muenster',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Nunito',
                      fontSize: 30,
                    ))),
            bottomNavigationBar: BottomAppBar(
                color: Colors.orangeAccent[100],
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text('Next',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                          vertical: 10, horizontal: 70),
                      child: const Text('Tinguely Museum',
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
                    SizedBox(
                        width: 300,
                        height: 200,
                        child: Image.network(
                            'https://mein.toubiz.de/api/v1/media/b259e60d-3252-46d6-af2a-a97e34f6a7eb/preview?format=image/jpeg&width=900',
                            fit: BoxFit.cover)),
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
                              child: const Text('baslermuenster.ch',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 25,
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue)))),
                    ]),
                    Stack(children: const [
                      SizedBox(
                          height: 300,
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
                              'The Basler Münster is one of the most famous Landmarks of Basel. The 67 meter high former episcopal church built between 1019 and 1500 offers wonderful views over the Rhine and is one of the most popular viewpoints in Basel. ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                    ]),
                    Stack(
                      children: const [
                        SizedBox(
                            height: 250,
                            width: 400,
                            child: Card(
                                elevation: 5,
                                color: Color.fromRGBO(205, 202, 202, 1.0))),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            child: Text('Opening Times:',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 40, horizontal: 5),
                            child: Text('Monday-Friday: 10-00 - 17-00 ',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 23,
                                    color: Colors.black))),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 70, horizontal: 5),
                            child: Text('Saturday: 10:00-16:00 ',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 23,
                                    color: Colors.black))),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 100, horizontal: 5),
                            child: Text('Sunday: 11:30 - 17:30',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 23,
                                    color: Colors.black))),
                      ],
                    ),
                    Stack(children: const [
                      SizedBox(
                          height: 510,
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
                              EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                          child: Text('Entrance:',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 60, horizontal: 5),
                          child: Text('Free',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 90, horizontal: 5),
                          child: Text('Tower Ascent:  ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black))),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 120, horizontal: 5),
                          child: Text('Adults: 6 CHF ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 150, horizontal: 5),
                          child: Text('Students, Retired & Groups 6+: ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 180, horizontal: 5),
                          child: Text('4 CHF ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 210, horizontal: 5),
                          child: Text('Under 14: ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 240, horizontal: 5),
                          child: Text('Free ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                    ]),
                    Stack(children: [
                      const SizedBox(
                          height: 250,
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
                          child: Text('Münsterplatz 9',
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
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 85, horizontal: 0),
                          child: TextButton(
                              onPressed: () {
                                // ignore: deprecated_member_use
                                launch("tel:// +41 61 277 45 42");
                              },
                              child: const Text(
                                  'Tourism Bureau: +41 61 277 45 42',
                                  style: TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 25,
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue)))),
                    ]),
                  ],
                ),
              ),
            ])));
  }
}
