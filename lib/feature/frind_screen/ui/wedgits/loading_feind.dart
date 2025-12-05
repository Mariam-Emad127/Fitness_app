import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingFrind extends StatelessWidget {
  const LoadingFrind({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
        child: Row(
          children: [
            // shimmer circle
            Shimmer.fromColors(
              baseColor: Colors.grey.shade800,
              highlightColor: Colors.grey.shade700,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),

            const SizedBox(width: 16),

            // shimmer line
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade800,
                highlightColor: Colors.grey.shade700,
                child: Container(
                  height: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
  });
  }
}