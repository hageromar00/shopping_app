import 'package:flutter/material.dart';

class PageViews extends StatelessWidget {
  const PageViews({super.key});
  final List<String> featuredImages = const[
    'https://images.unsplash.com/photo-1512436991641-6745cdb1723f',
    'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f',
    'https://images.unsplash.com/photo-1506744038136-46273834b3fb',
  ];
  @override
  Widget build(BuildContext context) {
    return    SizedBox(
              height: 180,
              child: PageView.builder(
                itemCount: featuredImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        featuredImages[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  );
                },
              ),
            );
  }
}