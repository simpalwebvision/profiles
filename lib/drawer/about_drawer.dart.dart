import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
          backgroundColor: Colors.white,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Center(
                child: Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    scale: 3,
                  ),
                ),
              ),
            )
          ]),
          actions: [
            IconButton(onPressed: () {}, icon: (Icon(Icons.notification_add))),
            SizedBox(
              height: 20,
            ),
          ],
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[
                    Color.fromARGB(255, 155, 57, 235),
                    Colors.black
                  ])),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Material(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            elevation: 10,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.home),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Hello Binod',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          '13677184',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.collections),
                title: const Text('OUR COLLECTION '),
                onTap: () {
                  //    Navigator.push(
                  //   context,
                  //  MaterialPageRoute(
                  //   builder: (context) => ContactCategory()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.share_arrival_time),
                title: const Text('NEW ARRIVAL'),
                onTap: () {
                  // Navigator.push(
                  // context,
                  //  MaterialPageRoute(
                  //   builder: (context) => ContactCategory()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.format_quote),
                title: const Text('FAQ'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info_sharp),
                title: const Text('ABOUT US'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.contact_emergency),
                title: const Text('CONTACT US'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(' Logout '),
                onTap: () {
                  // AuthController.logOut();
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(children: <Widget>[
            // Replace with your image asset
            SizedBox(height: 20),
            Text(
              'Welcome to Rinkalz',
              style: TextStyle(
                fontSize: 24,
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              textAlign: TextAlign.justify,
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(fontSize: 14),
            ),

            SizedBox(
              height: 5,
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.language, color: Colors.black),
                  title: const Text(
                    'https://teethmedic.com/www.rinkalz.com/index.php',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.email, color: Colors.black),
                  title: const Text(
                    ' Support@balchitrkal.in ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.phone_android, color: Colors.black),
                  title: const Text(
                    ' (+91) 8422-014-356 ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.map_sharp, color: Colors.black),
                  title: const Text(
                    'B-Wing,G-5,Sargam Apartment Ramdas Near Aditya Hotel,Vasai(East),Palghar -401208. ',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ]),
        ));
  }
}
