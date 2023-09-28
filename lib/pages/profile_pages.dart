import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile/appColors/app_colors.dart';
import 'package:profile/payment/payment_screen.dart';
import 'package:profile/widgets/my_button_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
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
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Name: simpal'),
          ),
          ListTile(
            title: Text('Email: simpalwebvition@gmail.com'),
          ),
          ListTile(
            title: Text('Help  Center'),
            onTap: () {
              // Navigator.push(context,
              //  MaterialPageRoute(builder: (context) => HelpCenterScreen()));
            },
          ),
          ListTile(
            title: Text('Change Password'),
            onTap: () {
              // Navigator.push(context,
              // MaterialPageRoute(builder: (context) => ChangePassword()));
            },
          ),
          ListTile(
            title: Text('My Bank & UPl Details'),
            onTap: () {
              // Navigate to the order history page
              // You can implement this navigation based on your app's structure
            },
          ),
          ListTile(
            title: Text('My Shared Products'),
            onTap: () {
              // Navigate to the order history page
              // You can implement this navigation based on your app's structure
            },
          ),
          ListTile(
            title: Text('My Payments'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()));
            },
          ),
          ListTile(
            title: Text('Refer & Earn'),
            onTap: () {
              // Navigate to the settings page
              // You can implement this navigation based on your app's structure
            },
          ),
          ListTile(
            title: Text('Spins'),
            onTap: () {
              // Navigate to the settings page
              // You can implement this navigation based on your app's structure
            },
          ),
          ListTile(
            title: Text('My Followed Shops'),
            onTap: () {
              // Navigate to the settings page
              // You can implement this navigation based on your app's structure
            },
          ),
          ListTile(
            title: Text('rinkalz Credits'),
            onTap: () {
              // Navigate to the settings page
              // You can implement this navigation based on your app's structure
            },
          ),
          ListTile(
            title: Text('Become a Supplier'),
            onTap: () {
              // Navigate to the settings page
              // You can implement this navigation based on your app's structure
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              // Navigate to the settings page
              // You can implement this navigation based on your app's structure
            },
          ),
          ListTile(
            title: Text(' Rate rinkalz '),
            onTap: () {
              // Navigate to the settings page
              // You can implement this navigation based on your app's structure
            },
          ),
          ListTile(
            title: Text('Legal and Policies'),
            onTap: () {
              // Navigate to the settings page
              // You can implement this navigation based on your app's structure
            },
          ),
          // Add more options as needed
        ],
      ),
    );
  }
}
