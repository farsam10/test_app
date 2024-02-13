import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'catalog_model.dart';

import 'catalog_model.dart';

class Catalog1 extends StatelessWidget {
  Catalog1({super.key});

  List<String> categories = [
    "T-Shirts",
    "Crop tops",
    "Sleeveless",
    "Sleeves",
    "T-Shirts",
    "Crop tops",
    "Sleeveless",
    "Sleeves"
  ];

  List<CatalogModel> catalog = [
    CatalogModel(productName: "Pull Over", 
    productBrand: "Mango", 
    numberOfStars: 4, price: "51\$",
    imagePath: "assets/images/image1.jpg"
    ),
     CatalogModel(productName: "Blouse", 
    productBrand: "Dorothy Perkins", 
    numberOfStars: 0, price: "34\$",
    imagePath: "assets/images/image2.jpg"
    ),
     CatalogModel(productName: "T-shirt", 
    productBrand: "LOST Ink", 
    numberOfStars: 5, price: "12\$",
    imagePath: "assets/images/image3.jpg"
    ),
     CatalogModel(productName: "Shirt", 
    productBrand: "Topshop", 
    numberOfStars: 4, price: "51\$",
    imagePath: "assets/images/image4.jpg"
    ),
     

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Women's tops",
          style: GoogleFonts.metrophobic(
            fontSize: 43,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 50,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 30,
                    width: 100,
                    child: Center(
                      child: Text(
                        "${categories[index]}",
                        style: GoogleFonts.metrophobic(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                );
              },
              itemCount: categories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Expanded(child: ListView.builder(
            itemCount: catalog.length,
            itemBuilder: (BuildContext context, int index){
            return productDetails(catalog[index]);
          },))
        ],
      ),
    );
  }

  Widget productDetails(CatalogModel catalogModel) {
    return Container(
      height: 104,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          //The image section
          Image.asset(catalogModel.imagePath),

          //The Text Section

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(catalogModel.productName,
                    style: GoogleFonts.metrophobic(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Text(catalogModel.productBrand,
                    style: GoogleFonts.metrophobic(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF9B9B9B),
                    )),
                Container(
                    height: 18,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: catalogModel.numberOfStars,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Icon(
                          Icons.star,
                          color: Color(0xFFFFBA49),
                        );
                      },
                    )),
                Text(catalogModel.price,
                    style: GoogleFonts.metrophobic(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
