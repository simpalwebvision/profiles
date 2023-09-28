import 'package:flutter/material.dart';

class FaqDrawer extends StatefulWidget {
  @override
  _FaqDrawerState createState() => _FaqDrawerState();
}

class _FaqDrawerState extends State<FaqDrawer> {
  List<bool> expanded = [false, false];
  //expaned status boolean for ExpansionPanel
  //we have two panels so the bool value
  //set bool to true, if you want to expand accordion by default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Container(
          child: Column(
            children: [
              ExpansionTile(
                title: Text("I connot see the price of product"),
                children: [
                  Container(
                    color: Colors.black12,
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                  )
                ],
              ),
              Card(
                  color: Color.fromARGB(255, 253, 253, 253),
                  child: ExpansionTile(
                    title: Text("Do you accept Inernation orders ?"),
                    children: [
                      Container(
                        color: Colors.black12,
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                      )
                    ],
                  )),
              Card(
                  color: const Color.fromARGB(255, 215, 216, 215),
                  child: ExpansionTile(
                    title: Text("Do you accept Inernation orders ?"),
                    children: [
                      Container(
                        color: Colors.black12,
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                      )
                    ],
                  )),
              Card(
                  color: Color.fromARGB(255, 253, 253, 253),
                  child: ExpansionTile(
                    title: Text("Is there any mInImum order amount ?"),
                    children: [
                      Container(
                        color: Colors.black12,
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                      )
                    ],
                  )),
              Card(
                  color: const Color.fromARGB(255, 243, 242, 242),
                  child: ExpansionTile(
                    title: Text("Do you accept Inernation orders ?"),
                    children: [
                      Container(
                        color: Colors.black12,
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                      )
                    ],
                  )),
              Card(
                  color: Color.fromARGB(255, 252, 255, 253),
                  child: ExpansionTile(
                    title: Text(
                        "Can I use your product Images to clrcuIate to my customers onIIne and offilne ?"),
                    children: [
                      Container(
                        color: Colors.black12,
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                      )
                    ],
                  )),
              Card(
                  color: Color.fromARGB(255, 243, 242, 242),
                  child: ExpansionTile(
                    title: Text(
                        "Can I use your product Images to clrcuIate to my customers onIIne and offilne ?"),
                    children: [
                      Container(
                        color: Colors.black12,
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                      )
                    ],
                  )),
              Card(
                  color: Color.fromARGB(255, 247, 244, 244),
                  child: ExpansionTile(
                    title: Text(
                        "Can I use your product Images to clrcuIate to my customers onIIne and offilne ?"),
                    children: [
                      Container(
                        color: Colors.black12,
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                      )
                    ],
                  )),
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
                    leading:
                        const Icon(Icons.phone_android, color: Colors.black),
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
            ],
          ),
        ));
  }
}
