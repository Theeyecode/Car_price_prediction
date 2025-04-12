import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictive_project/data.dart';


Widget buildDealer(Dealer dealer, int index){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0),
    width: 120,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[

        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(dealer.image), 
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          height: 60,
          width: 60,
        ),

        SizedBox(
          height: 10,
        ),

        Text(
          dealer.name,
          style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                      letterSpacing: .5),
                                  ),
        ),

        Text(
          "${dealer.offers} offers",
           style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                        color: Colors.grey,letterSpacing: .5),
                                  ),
         
        ),

      ],
    ),
  );
}