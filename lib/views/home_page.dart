import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:profile/constants/themes.dart';
import 'package:profile/controllers/itembag_controller.dart';
import 'package:profile/controllers/product_controller.dart';
import 'package:profile/drawer/about_drawer.dart.dart';
import 'package:profile/drawer/contact_drawer.dart';
import 'package:profile/drawer/faq_drawer.dart';
import 'package:profile/drawer/new_drawer.dart';
import 'package:profile/views/detail_page.dart';
import 'package:profile/widgets/chip_widget.dart';

import '../widgets/ads_banner_widget.dart';
import '../widgets/card_widget.dart';
import 'cart_page.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(proudctNotifierProvider);
    final currentIndex = ref.watch(currentIndexProvider);
    final itemBag = ref.watch(itemBagProvider);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                scale: 3,
              ),
            ),
          ),
        ]),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20, top: 10),
              child: Badge(
                label: Text(itemBag.length.toString()),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CardPage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                      size: 24,
                    )),
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add))
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
                // Navigator.push(
                //  context,
                // MaterialPageRoute(
                //   builder: (context) => ProductListScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.share_arrival_time),
              title: const Text('NEW ARRIVAL'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewDrawer(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.format_quote),
              title: const Text('FAQ'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FaqDrawer()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_sharp),
              title: const Text('ABOUT US'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_emergency),
              title: const Text('CONTACT US'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactUs()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(' Logout '),
              onTap: () {},
            ),
          ],
        ),
      ),
      // drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdsBannerWidgets(),

            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: const [
                  ChipWidget(chipLabel: 'All'),
                  ChipWidget(chipLabel: 'Women'),
                  ChipWidget(chipLabel: 'Men'),
                  //ChipWidget(chipLabel: 'Kurtis and Kurta'),
                  ChipWidget(chipLabel: 'Tshirt'),
                  //  ChipWidget(chipLabel: 'Kids'),
                ],
              ),
            ),
            // Hot sales section
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('T SHIRT COLLECTION', style: AppTheme.kHeadingOne),
                Text(
                  'See all',
                  style: AppTheme.kSeeAllText,
                ),
              ],
            ),

            MasonryGridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              shrinkWrap: true,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(getIndex: index),
                    )),
                child: SizedBox(
                  height: 250,
                  child: ProductCardWidget(productIndex: index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
