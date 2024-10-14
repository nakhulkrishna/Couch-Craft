import 'package:couchcraft/screens/products/screens/productsDetails.dart';
import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:couchcraft/utils/widgets/CP_newarrival.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CP_products_list_widgets extends StatelessWidget {
  const CP_products_list_widgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Newarrival_app_widgets(),
            GridView.builder(
              shrinkWrap:
                  true, // This allows GridView to fit inside the scroll view
              physics:
                  const NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,

                crossAxisSpacing: 8.0, // Space between columns
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const Productsdetails(
                        titleProducts: "BROOM",
                      ),
                    )),
                    child: Container(
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(
                        color: AppColors.lightGray,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(
                                "assets/images/products3-removebg-preview.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "BROOM",
                                  style: GoogleFonts.openSans(
                                      color: Colors.black54),
                                ),
                                const Spacer(),
                                Text(
                                  "₹999",
                                  style: GoogleFonts.openSans(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
