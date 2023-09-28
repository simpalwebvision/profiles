import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:profile/drawer/contact_drawer.dart';
import 'package:profile/pages/product_card.dart';

class CategoryPages extends StatefulWidget {
  const CategoryPages({super.key});

  @override
  State<CategoryPages> createState() => _CategoryPagesState();
}

class _CategoryPagesState extends State<CategoryPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CachedNetworkImage(
                imageUrl: category.imageUrl,
                width: 80,
                height: 80,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              title: Text(category.name),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactUs()));
              },
            ),
          );
        },
      ),
    );
  }
}
