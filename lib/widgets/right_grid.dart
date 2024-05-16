import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RightGridWidget extends StatelessWidget {
  const RightGridWidget(
      {super.key,
      required this.imageUrl,
      required this.brandName,
      required this.tagLine,
      required this.tagLine2});

  final String imageUrl;
  final String brandName;
  final String tagLine;
  final String tagLine2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: 200,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(15),
         Text(
          brandName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
         Text(
          tagLine,
          style: const TextStyle(
              fontSize: 17, fontWeight: FontWeight.w300, color: Colors.grey),
        ),
         Text(
          tagLine2,
          style: const TextStyle(
              fontSize: 17, fontWeight: FontWeight.w300, color: Colors.grey),
        )
      ],
    );
  }
}
