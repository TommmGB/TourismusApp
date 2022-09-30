Stack(children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/x');
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
                                  'https://th.bing.com/th/id/OIP.ixu_kHTCmEQac-9bCJNHWwHaE7?pid=ImgDet&rs=1',
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
                          child: Text("Tierpark Lange-Erlen",
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 25,
                                  color: Colors.purple))))
                ]),





import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri url = Uri.parse("https://erlen-verein.ch/");

class tierparklangeerlen extends StatelessWidget {
  const tierparklangeerlen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.black),
                backgroundColor: Color.fromARGB(255, 1, 96, 78),
                title: const Text('Tierpark Lange-Erlen',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 47, 45),
                      fontFamily: 'Nunito',
                      fontSize: 30,
                    ))),
            bottomNavigationBar: BottomAppBar(
                color: Color.fromARGB(255, 0, 108, 88),
                child: Row(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: IconButton(
                          icon: const Icon(Icons.arrow_back_outlined),
                          iconSize: 25,
                          onPressed: (() {
                            Navigator.pushNamed(context, '/a');
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
                            Navigator.pushNamed(context, '/e');
                          })),
                ])),
            drawer: Drawer(
                backgroundColor: Color.fromARGB(255, 0, 129, 106),
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
                            color: Color.fromARGB(255, 1, 45, 43),
                          )),
                    ),
                    const Divider(
                      thickness: 2,
                      indent: 0,
                      endIndent: 0,
                      color: Color.fromARGB(255, 0, 134, 105),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'Homepage');
                        },
                        child: Card(
                            elevation: 10,
                            child: ListTile(
                              tileColor: Color.fromARGB(255, 0, 124, 124),
                              leading: const Icon(Icons.home_outlined),
                              title: const Text(
                                'Homepage',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 0, 59, 62)),
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
                              tileColor: Color.fromARGB(255, 0, 124, 124),
                              leading: const Icon(Icons.location_on_outlined),
                              title: const Text(
                                'Kleinbasel',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 0, 59, 62)),
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
                              tileColor: Color.fromARGB(255, 0, 124, 124),
                              leading: const Icon(Icons.location_on_outlined),
                              title: const Text(
                                'Grossbasel',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 0, 59, 62)),
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
                              tileColor: Color.fromARGB(255, 0, 124, 124),
                              title: const Text(
                                'Public Transport',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 0, 59, 62)),
                              ),
                            ))),
                    const SizedBox(height: 10),
                    GestureDetector(
                        child: Card(
                            elevation: 10,
                            child: ListTile(
                              leading: const Icon(Icons.map_outlined),
                              tileColor: Color.fromARGB(255, 0, 124, 124),
                              title: const Text(
                                'Interactive Map',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 0, 59, 62)),
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
                              leading: const Icon(Icons.arrow_back_outlined),
                              tileColor: Color.fromARGB(255, 3, 159, 125),
                              title: const Text(
                                'Return to last page',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 0, 59, 62)),
                              ),
                            ))),
                  ],
                )),
            body: CustomScrollView(slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Image.network(
                        'https://th.bing.com/th/id/R.815b203f1369596d69f242fe7ceafcb6?rik=2ZrZ72hCiz1Miw&riu=http%3a%2f%2fde.academic.ru%2fpictures%2fdewiki%2f84%2fTierpark_Lange_Erlen.jpg&ehk=zI3n35lKMa0d6VWWu9w9gL%2bWpTD1hXsLrWYjo1Fi2Fo%3d&risl=&pid=ImgRaw&r=0'),
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
                              child: const Text('erlen-verein.ch',
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
                              "The Lange Erlen Zoo, founded in 1871, is a popular destination for families. In addition to red deer and fallow deer, lynx, wild cats and wild boars live in the near-natural facilities.",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 25,
                                  color: Colors.black))),
                    ]),
                    Stack(
                      children: const [
                        SizedBox(
                            height: 125,
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
                            child: Text('Monday-Sunday: 08:00-18:00 ',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 23,
                                    color: Colors.black))),
                      ],
                    ),
                    Stack(children: const [
                      SizedBox(
                          height: 125,
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
                          child: Text('For all people: free',
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
                          child: Text('Erlenparkweg 110',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                      const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 60, horizontal: 5),
                          child: Text('CH-4058 Basel ',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 23,
                                  color: Colors.black))),
                       const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 90, horizontal: 5),
                          child: Text('Email: info@erlen-verein.ch',
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
                                launch("tel:// +41 (0)61 681 43 44");
                              },
                              child: const Text('Sekreteriat: +41 (0)61 681 43 44',
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

