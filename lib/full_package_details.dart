import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FullPackageDetailsScreen extends StatefulWidget {
  const FullPackageDetailsScreen({super.key});

  @override
  State<FullPackageDetailsScreen> createState() => _FullPackageDetailsScreenState();
}

class _FullPackageDetailsScreenState extends State<FullPackageDetailsScreen> {
  int qtyDano = 1;
  int qtyNido = 1;

  void increaseDano() {
    setState(() {
      qtyDano = qtyDano + 1;
    });
  }

  void decreaseDano() {
    if (qtyDano > 1) {
      setState(() {
        qtyDano = qtyDano - 1;
      });
    }
  }

  void increaseNido() {
    setState(() {
      qtyNido = qtyNido + 1;
    });
  }

  void decreaseNido() {
    if (qtyNido > 1) {
      setState(() {
        qtyNido = qtyNido - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black, size: 24),
                  const SizedBox(width: 12),
                  Text(
                    'Full Package Destails',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Products',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 12),

            ProductCard(
              imagePath: 'images/image2.png',
              productName: 'Arla DANO Full Cream Milk Powder Instant',
              priceBefore: '৳200',
              priceAfter: '৳182',
              showDiscount: true,
              quantity: qtyDano,
              onPlus: increaseDano,
              onMinus: decreaseDano,
            ),

            Container(height: 1, color: const Color(0xFFEFEFEF)),

            ProductCard(
              imagePath: 'images/image1.png',
              productName: 'Nestle Nido Full Cream Milk Powder Instant',
              priceBefore: '৳200',
              priceAfter: '৳342',
              showDiscount: false,
              quantity: qtyNido,
              onPlus: increaseNido,
              onMinus: decreaseNido,
            ),

            const Spacer(),

            Container(
              margin: const EdgeInsets.fromLTRB(17, 0, 16, 16),
              width: 343,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5EC401),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {},
                child: Stack(
                  children: [
                    Positioned(
                      left: 95 - 17,
                      top: 12,
                      child: SizedBox(
                        width: 139,
                        height: 24,
                        child: Text(
                          'Add New Product',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 303 - 17,
                      top: 12,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String priceBefore;
  final String priceAfter;
  final bool showDiscount;
  final int quantity;
  final VoidCallback onPlus;
  final VoidCallback onMinus;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.priceBefore,
    required this.priceAfter,
    required this.showDiscount,
    required this.quantity,
    required this.onPlus,
    required this.onMinus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 376,
      height: 164,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 21),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 115,
                height: 121,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
              if (showDiscount)
                Positioned(
                  top: -6,
                  left: -6,
                  child: Container(
                    width: 62,
                    height: 62,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF37A20),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '20%\nOFF',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 1.1,
                      ),
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.6,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  priceBefore,
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      priceAfter,
                      style: GoogleFonts.poppins(
                        color: const Color(0xFFF57C00),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 121,
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: onMinus,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFF5552),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: const Icon(Icons.remove, color: Colors.white, size: 18),
                            ),
                          ),
                          Text(
                            '$quantity',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          InkWell(
                            onTap: onPlus,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: const Color(0xFF5EC401),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: const Icon(Icons.add, color: Colors.white, size: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}