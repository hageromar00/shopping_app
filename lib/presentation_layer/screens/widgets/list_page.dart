import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  // final List<Map<String, String>> hotOffers =const [
  //   {
  //     "image": "https://images.unsplash.com/photo-1567306226416-28f0efdc88ce",
  //     "description": "Get 30% off on skincare products for a limited time.",
  //   },
  //   {
  //     "image": "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
  //     "description": "Hot offer 2 description here.",
  //   },
  //   {
  //     "image": "https://images.unsplash.com/photo-1512436991641-6745cdb1723f",
  //     "description": "Hot offer 3 description here.",
  //   },
  //   {
  //     "image": "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
  //     "description": "Hot offer 4 description here.",
  //   },
  //   {
  //     "image": "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f",
  //     "description": "Hot offer 5 description here.",
  //   },
  // ];
  final List<Map<String, String>> hotOffers =const [
  {
    "image": "https://images.unsplash.com/photo-1567306226416-28f0efdc88ce",
    "description": "Get 30% off on skincare products for a limited time"
  },
  {
    "image": "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
    "description": "Great offers on real sports shoes made for your active lifestyle"
  },
  {
    "image": "https://images.unsplash.com/photo-1512436991641-6745cdb1723f",
    "description": "Summer sale on clothing and accessories."
  },
  {
    "image": "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
    "description": "Discover the beauty of pristine nature and tranquil surroundings."
  },
  {
    "image": "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f",
    "description": "Special offer: Buy a Camera and get a free gift."
  },
];
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
              height: 300, 
              child: ListView.builder(
                itemCount: hotOffers.length,
                itemBuilder: (context, index) {
                  final offer = hotOffers[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(12),
                          ),
                          child: Image.network(
                            offer['image']!,
                            width: 120,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              offer['description']!,
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
  }
}