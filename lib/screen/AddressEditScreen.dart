import 'package:flutter/material.dart';

class AddressEditScreen extends StatefulWidget {
  @override
  _AddressEditScreenState createState() => _AddressEditScreenState();
}

class _AddressEditScreenState extends State<AddressEditScreen> {
  // Initialize variables to store the user's address information.
  String fullName = "John Doe";
  String address = "123 Main St";
  String city = "City";
  String state = "State";
  String postalCode = "12345";

  // Function to update the address.
  void updateAddress() {
    // Replace this with actual API calls to update the address on Amazon.
    // You'll need to handle authentication and error handling as well.
    // For simplicity, we'll just print the updated address here.
    print('Address updated:');
    print('Full Name: $fullName');
    print('Address: $address');
    print('City: $city');
    print('State: $state');
    print('Postal Code: $postalCode');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Delivery Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Full Name'),
            TextFormField(
              initialValue: fullName,
              onChanged: (value) {
                setState(() {
                  fullName = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text('Address'),
            TextFormField(
              initialValue: address,
              onChanged: (value) {
                setState(() {
                  address = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text('City'),
            TextFormField(
              initialValue: city,
              onChanged: (value) {
                setState(() {
                  city = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text('State'),
            TextFormField(
              initialValue: state,
              onChanged: (value) {
                setState(() {
                  state = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text('Postal Code'),
            TextFormField(
              initialValue: postalCode,
              onChanged: (value) {
                setState(() {
                  postalCode = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: updateAddress,
              child: Text('Save Address'),
            ),
          ],
        ),
      ),
    );
  }
}
