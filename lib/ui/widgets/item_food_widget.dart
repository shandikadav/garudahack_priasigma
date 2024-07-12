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
        width: 0.42 * MediaQuery.of(context).size.width,
        height: 220,
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
              child: Image.network(
                imagesource,
                width: 0.42 * MediaQuery.of(context).size.width,
                height: 111,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
                height: 8,
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(
                      namamakanan,
                      style: blackColorTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    namarestoran,
                    style: blackColorTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                    ),
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
                      fontSize: 8,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              children: [
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
                    ),
                  ),
                ),
                Text(harga.toString(),
                    style: dangerTextsyle.copyWith(
                        decoration: TextDecoration.lineThrough, fontSize: 12)),
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
    );
  }
}
