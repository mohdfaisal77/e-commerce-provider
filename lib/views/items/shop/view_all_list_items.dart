import 'package:flutter/material.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/views/items/home/rating_bar_items.dart';

class ViewAllListItems extends StatelessWidget {
  final String image;
  const ViewAllListItems({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      height: 104,
      width: double.maxFinite,
      child: Stack(
        children: [
          Row(
            children: [
              // Image container
              Container(
                width: 104,
                height: 104,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.grey.withOpacity(.2),
                ),
              ),
              // Colored container
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.whiteMedium,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.all(8), // Add padding for better layout
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Pullover", style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      const Text("Mango", style: TextStyle(color: Colors.grey)),
                      const SizedBox(height: 4),
                      const RatingStarsItem(),
                      const SizedBox(height: 4),
                      const Text("\$35", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Positioned widget
          Positioned(
            top: 90,
            bottom: 0,
            right: 2,
            child: Container(
              // height: 44,
              // width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                // color: Colors.grey,
              ),
              child: const Center(
                child: Icon(
                  Icons.favorite_border,
                  color: Color(0xff9B9B9B),
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
