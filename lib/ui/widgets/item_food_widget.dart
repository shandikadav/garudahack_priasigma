import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';

class FoodItem extends StatelessWidget {
  final String namamakanan;
  final String tanggal_expired;
  final String namarestoran;
  final String alamat;
  final int star;
  final String imagesource;
  final int harga;
  final int harga_diskon;
  final VoidCallback? onTap;
  const FoodItem(
      {super.key,
      required this.alamat,
      required this.namamakanan,
      required this.harga,
      required this.harga_diskon,
      required this.tanggal_expired,
      required this.imagesource,
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
                  topLeft: Radius.circular(9), topRight: Radius.circular(9)),
              child: Image.asset(
                imagesource,
                width: 0.43 * MediaQuery.of(context).size.width,
                height: 111,
                fit: BoxFit.fitWidth,
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
                  ),
                  Container(
                    width: 50,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                        child: Text(
                      tanggal_expired,
                      style: whiteColorTextStyle.copyWith(
                        fontSize: 7,
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    alamat,
                    style: blackColorTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Column(
                    children: [
                      Text(harga.toString(),
                          style: dangerTextsyle.copyWith(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 12)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 50,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                              child: Text(
                            harga_diskon.toString(),
                            style: whiteColorTextStyle.copyWith(
                              fontSize: 7,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
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
