import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictive_project/constant.dart';
import 'package:predictive_project/data.dart';


Widget buildCar(Car car, int index){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    padding: EdgeInsets.all(16),
    // ignore: unnecessary_null_comparison
    margin: EdgeInsets.only(right: index != null ? 16 : 0, left: index == 0 ? 16 : 0),
    width: 180,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        Align(
          alignment: Alignment.centerRight,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                car.condition,
                 style: GoogleFonts.lato(
            fontSize: 10,
            fontWeight: FontWeight.bold,
    textStyle: TextStyle( color:  Colors.white,letterSpacing: .5),
  ),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 8,
        ),

        SizedBox(
          height: 90,
          child: Center(
            child: Hero(
              tag: car.model,
              child: Image.asset(
                car.images[0],
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),

        SizedBox(
          height: 15,
        ),

        Text(
          car.model,
          style: GoogleFonts.lato(
            fontSize: 14,
    textStyle: TextStyle(color: Colors.blue, letterSpacing: .5),
  ),
        ),

        SizedBox(
          height: 2,
        ),

        Text(
          car.brand,
           style: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.bold,
    textStyle: TextStyle(letterSpacing: .5),
  ),
        ),

        Text(
          "per ${car.condition == "Daily" ? "day" : car.condition == "Weekly" ? "week" : "month"}",
            style: GoogleFonts.lato(
            fontSize: 14,
            fontWeight: FontWeight.bold,
    textStyle: TextStyle(color: Colors.grey, letterSpacing: .5),
  ),
        ),

      ],
    ),
  );
}