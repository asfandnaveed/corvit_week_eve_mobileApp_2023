import 'package:duplicate/api/ApiInterface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: Get.width,
            child: Column(
              children: [
                Text(
                  'Products',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: Get.height*0.8,
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context,index){
                      return Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1598214886806-c87b84b7078b?q=80&w=2825&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                  width: 140,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                  width: Get.width*0.57,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.deepOrange,
                                                      width: 1.5
                                                  ),
                                                  borderRadius: BorderRadius.circular(40)
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(2.0),
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Colors.deepOrange,
                                                ),
                                              ),
                                            ),
                                            RatingBar.builder(
                                              initialRating: 3.5,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemSize: 20,
                                              itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.deepOrange,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          'Pan Cackes',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 17
                                          ),
                                        ),

                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text(
                                          '350 Rs',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16
                                          ),
                                        ),

                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 160,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Colors.deepOrange
                                                ),
                                                onPressed: (){},
                                                child: Text(
                                                  'Add',
                                                  style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
