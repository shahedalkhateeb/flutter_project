import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SnacksScreen extends StatelessWidget {
  const SnacksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back, color: Colors.black, size: 24),
                    const SizedBox(width: 18),
                    Text(
                      'Snacks',
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

              const SizedBox(height: 33),

              Container(
                padding: const EdgeInsets.only(left: 15, right: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: FoodItem(
                        imgSrc: 'images/shemai.png',
                        itemLabel: 'Radhuni Shemai - 200 gm - 4-2-15-VD-SQ',
                        itemPrice: '৳60',
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: FoodItem(
                        imgSrc: 'images/cheese.png',
                        itemLabel: 'Cheese Puffs Chips - 22 gm',
                        itemPrice: '৳700',
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 51),

              Container(
                padding: const EdgeInsets.only(left: 15, right: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: FoodItem(
                        imgSrc: 'images/nescafe.png',
                        itemLabel: 'Nescafe Classic Coffee Jar - 50gm',
                        itemPrice: '৳25',
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: FoodItem(
                        imgSrc: 'images/sugar.png',
                        itemLabel: 'Akher Chini (Deshi Sugar) - 1kg',
                        itemPrice: '৳30',
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String imgSrc;
  final String itemLabel;
  final String itemPrice;

  const FoodItem({
    super.key,
    required this.imgSrc,
    required this.itemLabel,
    required this.itemPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 135,
          decoration: BoxDecoration(
            color: const Color(0xFFF3F4F4),
            borderRadius: BorderRadius.circular(9),
          ),
          padding: const EdgeInsets.only(top: 5, left: 24),
          child: Container(
            width: 115,
            height: 121,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(imgSrc, fit: BoxFit.contain),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: Text(
            itemLabel,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.2,
            ),
          ),
        ),
        const SizedBox(height: 33),
        Text(
          itemPrice,
          style: GoogleFonts.poppins(
            color: const Color(0xFFF37A20),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.6,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          height: 35,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF5EC401),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 16),
                const SizedBox(width: 6),
                Text(
                  'Add To Bag',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}