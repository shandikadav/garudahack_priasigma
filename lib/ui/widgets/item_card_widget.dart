import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';

class ItemCard extends StatelessWidget {
  final String namarestoran;
  final String alamat;
  final int star;
  final String imageSource;
  final VoidCallback? onTap;
  const ItemCard(
      {super.key,
      required this.alamat,
      required this.imageSource,
      required this.star,
      required this.namarestoran,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 0.43 * MediaQuery.of(context).size.width,
        height: 178,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(9),
                topRight: Radius.circular(9),
              ),
              child: Image.network(
                imageSource,
                height: 111,
                width: 0.43 * MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    namarestoran,
                    style: blackColorTextStyle.copyWith(
                      fontSize: 11,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Text(
                alamat,
                style: blackColorTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Row(
                children: [
                  (star == 5)
                      ? const Row(
                          children: [
                            Icon(Icons.star, size: 13, color: Colors.yellow),
                            Icon(Icons.star, size: 13, color: Colors.yellow),
                            Icon(Icons.star, size: 13, color: Colors.yellow),
                            Icon(Icons.star, size: 13, color: Colors.yellow),
                            Icon(Icons.star, size: 13, color: Colors.grey),
                          ],
                        )
                      : (star == 4)
                          ? const Row(
                              children: [
                                Icon(Icons.star,
                                    size: 13, color: Colors.yellow),
                                Icon(Icons.star,
                                    size: 13, color: Colors.yellow),
                                Icon(Icons.star,
                                    size: 13, color: Colors.yellow),
                                Icon(Icons.star,
                                    size: 13, color: Colors.yellow),
                                Icon(Icons.star, size: 13, color: Colors.grey),
                              ],
                            )
                          : (star == 3)
                              ? const Row(
                                  children: [
                                    Icon(Icons.star,
                                        size: 13, color: Colors.yellow),
                                    Icon(Icons.star,
                                        size: 13, color: Colors.yellow),
                                    Icon(Icons.star,
                                        size: 13, color: Colors.yellow),
                                    Icon(Icons.star_border,
                                        size: 13, color: Colors.yellow),
                                    Icon(Icons.star,
                                        size: 13, color: Colors.grey),
                                  ],
                                )
                              : (star == 2)
                                  ? const Row(
                                      children: [
                                        Icon(Icons.star,
                                            size: 13, color: Colors.yellow),
                                        Icon(Icons.star,
                                            size: 13, color: Colors.yellow),
                                        Icon(Icons.star_border,
                                            size: 13, color: Colors.yellow),
                                        Icon(Icons.star_border,
                                            size: 13, color: Colors.yellow),
                                        Icon(Icons.star,
                                            size: 25, color: Colors.grey),
                                      ],
                                    )
                                  : (star == 1)
                                      ? const Row(
                                          children: [
                                            Icon(Icons.star,
                                                size: 13, color: Colors.yellow),
                                            Icon(Icons.star_border,
                                                size: 13, color: Colors.yellow),
                                            Icon(Icons.star_border,
                                                size: 13, color: Colors.yellow),
                                            Icon(Icons.star_border,
                                                size: 13, color: Colors.yellow),
                                            Icon(Icons.star,
                                                size: 13, color: Colors.grey),
                                          ],
                                        )
                                      : const Row(
                                          children: [
                                            Icon(Icons.star,
                                                size: 13, color: Colors.yellow),
                                            Icon(Icons.star,
                                                size: 13, color: Colors.yellow),
                                            Icon(Icons.star,
                                                size: 13, color: Colors.yellow),
                                            Icon(Icons.star,
                                                size: 13, color: Colors.yellow),
                                            Icon(Icons.star,
                                                size: 13, color: Colors.yellow),
                                          ],
                                        ),
                  const SizedBox(
                    width: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
