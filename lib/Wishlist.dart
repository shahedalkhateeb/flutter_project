import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'wishlist_details.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Wishlist',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 4),

            Container(
              height: 1,
              color: Colors.grey.shade300,
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const WishlistCard(
                    imagePath: 'images/image1.png',
                    title: 'Nestle Nido Full Cream Milk Powder Instant',
                    oldPrice: '৳342',
                    newPrice: '৳270',
                  ),
                  Container(height: 1, color: const Color(0xFFEFEFEF)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailsScreen(),
                        ),
                      );
                    },
                    child: const WishlistCard(
                      imagePath: 'images/image2.png',
                      title: 'Nestle Nido Full Cream Milk Powder Instant',
                      oldPrice: '৳342',
                      newPrice: '৳270',
                    ),
                  ),
                  Container(height: 1, color: const Color(0xFFEFEFEF)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// الـ external widget: Container قابل لإعادة الاستخدام (صورة + نص)
class WishlistCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String oldPrice;
  final String newPrice;

  const WishlistCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.oldPrice,
    required this.newPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 376,
      height: 164,
      padding: const EdgeInsets.only(top: 21, left: 17, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 115,
            height: 121,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(color: Colors.grey.shade300),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.image_not_supported,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.6,
                    height: 1.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  oldPrice,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                    height: 1.0,
                    color: Colors.grey.shade500,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  newPrice,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                    height: 1.0,
                    color: const Color(0xFFF57C00),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}