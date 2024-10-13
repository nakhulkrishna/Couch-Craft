import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CS_app_widget extends StatelessWidget {
  const CS_app_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.gray)),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          const Icon(
            CupertinoIcons.search,
            color: AppColors.gray,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Search lamp,table,etc",
            style: GoogleFonts.nunito(color: AppColors.gray),
          )
        ],
      ),
    );
  }
}
