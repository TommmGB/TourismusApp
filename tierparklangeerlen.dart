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
