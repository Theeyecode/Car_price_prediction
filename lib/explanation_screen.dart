import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ExplanationScreen extends StatelessWidget {
  final double suggestedPrice;

  const ExplanationScreen({super.key, required this.suggestedPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: const Color(0xFFE3E2D1),
      appBar: AppBar(
        title: Text("Suggested Price", 
      style: GoogleFonts.lato(
                                    
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                        letterSpacing: .5),
                                  ),
        
        ),
        centerTitle: true,
      backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated Success Mark
            Center(
              child: Lottie.asset(
                'assets/success.json', // Add a Lottie animation for success
                height: 150,
                repeat: false,
              ),
            ),

            SizedBox(height: 20),

            // Suggested Price Display
            Text(
              "Suggested Selling Price",
style:  GoogleFonts.lato(
  fontSize: 22,
                                    
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                        letterSpacing: .5),
                                  ),
            ),
            SizedBox(height: 10),
            Text(
              "\$${suggestedPrice.toStringAsFixed(2)}",
              style:  GoogleFonts.lato(
  fontSize: 28,
  color: Colors.green,
                                    
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                        letterSpacing: .5),
                                  ),
            
            ),

            SizedBox(height: 15),

            // Dummy Explanation
            Text(
              "Based on market trends, mileage, and demand, this price ensures your car sells quickly while maximizing your earnings.",
              textAlign: TextAlign.center,
              style:  GoogleFonts.lato(
  fontSize: 16,
  color: Colors.black54,
                                    
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                        letterSpacing: .5),
                                  ),

            ),

            SizedBox(height: 30),

            // Post Button
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  print("Car Posted!"); // Dummy action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:       Color(0xFF3C8899),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text("Post Car", style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
