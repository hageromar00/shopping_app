import 'package:flutter/material.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/grid_page.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/list_page.dart';
import 'package:shopping_app/presentation_layer/screens/widgets/page_views.dart';

class ShoppingHomePage extends StatefulWidget {
  const ShoppingHomePage({Key? key}) : super(key: key);

  @override
  State<ShoppingHomePage> createState() => _ShoppingHomePageState();
}

class _ShoppingHomePageState extends State<ShoppingHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Our Products'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageViews(),
            const SizedBox(height: 10),
            GridPage(),
            const SizedBox(height: 16),
            // Hot Offers section title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'Hot Offers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Hot Offers ListView.builder (5 items)
            ListPage()
   
          ],
        ),
      ),
    );
  }
}
