import 'package:blood_distirbution/theme.dart';
import 'package:flutter/material.dart';


class HistoryCard extends StatelessWidget {
  final String nama;
  final String jumlahDarah;
  final String tanggal;
  HistoryCard({Key? key, required this.nama, required this.jumlahDarah, required this.tanggal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var controller = Get.find<BloodDonorController>();
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: successColor, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kepada : ${nama}",
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: regular),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Tanggal : ${tanggal}",
                  style: primaryTextStyle.copyWith(
                      fontSize: 18, fontWeight: regular),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Jumlah : 1 Kantong Darah",
                  style:
                      primaryTextStyle.copyWith(fontSize: 18, fontWeight: regular),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Image.asset("assets/success.png", width: 40, height: 40,)
        ],
      ),
    );
  }
}
