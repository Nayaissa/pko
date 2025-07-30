import 'package:flutter/material.dart';

class FaceProductScreen extends StatelessWidget {
   FaceProductScreen({super.key});

  final String faceImageUrl = "https://example.com/face.jpg";

  final List<String> productImages = [
    "https://example.com/p1.png",
    "https://example.com/p2.png",
    "https://example.com/p3.png",
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Column(
          children: [
            // الجزء العلوي: صورة الوجه + النقاط
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(
                    faceImageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorBuilder: (context, error, stackTrace) =>
                        const Center(child: Icon(Icons.error)),
                  ),
                  // دائرة الوجه
                  Container(
                    width: 200,
                    height: 260,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                  // نقاط
                  Positioned(top: 100, left: 100, child: _point()),
                  Positioned(top: 140, right: 90, child: _point()),
                  Positioned(top: 160, left: 130, child: _point()),
                ],
              ),
            ),

            // الجزء السفلي: المنتجات
            Container(
              height: screenHeight * 0.25, // 25% من ارتفاع الشاشة
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.95),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Best Solution Product",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 60,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: productImages.length,
                      separatorBuilder: (_, __) => const SizedBox(width: 10),
                      itemBuilder: (context, index) {
                        return _buildProductItem(productImages[index]);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.black,
                  //     shape: const StadiumBorder(),
                  //     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  //   ),
                  //   child: const Text("View all product"),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _point() => const CircleAvatar(radius: 6, backgroundColor: Colors.white);

  Widget _buildProductItem(String imageUrl) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.network(
        imageUrl,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
      ),
    );
  }
}
