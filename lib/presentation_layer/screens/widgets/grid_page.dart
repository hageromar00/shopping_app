import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});
  final List<Map<String, String>> products = const [
    {
      "title": "Product 1",
      "image": "https://images.unsplash.com/photo-1503602642458-232111445657",
    },
    {
      "title": "Product 2",
      "image": "https://images.unsplash.com/photo-1491553895911-0055eca6402d",
    },
    {
      "title": "Product 3",
      "image": "https://images.unsplash.com/photo-1505678261036-a3fcc5e884ee",
    },
    {
      "title": "Product 4",
      "image": "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView.builder(
        physics:
            const NeverScrollableScrollPhysics(), // عشان مايتحركش جوه الـ ScrollView
        shrinkWrap: true,
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عمودين
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Image.network(product['image']!, fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  child: Text(
                    product['title']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Item added to the cart'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
