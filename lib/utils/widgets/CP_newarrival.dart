import 'package:couchcraft/utils/colors/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Newarrival_app_widgets extends StatelessWidget {
  const Newarrival_app_widgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: AppColors.lightGray,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "NEW ARRIVAL",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 30,
                      width: 170,
                      child: Row(
                        children: [
                          Text(
                            "Box celing spot",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 14, // Adjust font size for the subtext
                              color: Colors.black54, // Subtext color
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "₹999",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 14, // Adjust font size for the subtext
                              color: Colors.black, // Subtext color
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                      width: 250,
                      child: Row(
                        children: [
                          Text(
                            "special offer",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 14, // Adjust font size for the subtext
                              color: Colors.black54, // Subtext color
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "20% OFF",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 14, // Adjust font size for the subtext
                              color: Colors.black, // Subtext color
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "with",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 14, // Adjust font size for the subtext
                              color: Colors.black54, // Subtext color
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 200,
                      child: Row(
                        children: [
                          Text(
                            "our specail code",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.normal,
                              fontSize: 14, // Adjust font size for the subtext
                              color: Colors.black54, // Subtext color
                            ),
                          ),
                          Text(
                            "COUCH20",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 14, // Adjust font size for the subtext
                              color: Colors.black, // Subtext color
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          "Claim now",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/products_2-removebg-preview.png",
                    ))),
          ))
        ],
      ),
    );
  }
}
