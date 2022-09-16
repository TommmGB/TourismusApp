import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PublicTransport extends StatelessWidget {
  const PublicTransport({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: Colors.orangeAccent[100],
              title: const Text('BVB Journey Planner',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Nunito',
                    fontSize: 30,
                  ))),
          drawer: Drawer(
            backgroundColor: Colors.orangeAccent[100],
            child: ListView(
              children: <Widget>[
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  child: const Text('Public Transport',
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
                SizedBox(height: 10),
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
          body: WebView(
            initialUrl:
                "https://www.efa-bw.de/bvb3/XSLT_TRIP_REQUEST2?language=en#",
            javascriptMode: JavascriptMode.unrestricted,
          )),
    );
  }
}
