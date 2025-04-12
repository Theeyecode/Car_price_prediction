import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predictive_project/car_image_picker.dart';
import 'package:predictive_project/car_widget.dart';
import 'package:predictive_project/constant.dart';
import 'package:predictive_project/data.dart';
import 'package:predictive_project/dealer_widget.dart';
import 'package:predictive_project/drop_down.dart';
import 'package:predictive_project/explanation_screen.dart';


class Showroom extends StatefulWidget {
  const Showroom({super.key});

  @override
  ShowroomState createState() => ShowroomState();
}

class ShowroomState extends State<Showroom> {
  List<NavigationItem> navigationItems = getNavigationItemList();
  late NavigationItem selectedItem;




  @override
  void initState() {
    super.initState();
    setState(() {
      selectedItem = navigationItems[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3E2D1),
      appBar: AppBar(
        leading: SizedBox.shrink(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // brightness: Brightness.light,
        title: Text(
          "CarHive",
          style: GoogleFonts.lato(
                                    
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                        letterSpacing: .5),
                                  ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 28,
            ),
          )
        ],
      ),
      body:
      IndexedStack(
      index: navigationItems.indexOf(selectedItem), // Dynamically switch tab content
      children: [
        buildBuyCarTab(),  // First tab (Buy Car)
        buildSellCarTab(context), // Second tab (Sell Car)
        buildProfileTab(), // Third tab (Person)
      ],
    ),
       
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: buildNavigationItems(),
        ),
      ),
    );
  }

 


  List<Widget> buildNavigationItems() {
    List<Widget> list = [];
    for (var navigationItem in navigationItems) {
      list.add(buildNavigationItem(navigationItem));
    }
    return list;
  }

  Widget buildNavigationItem(NavigationItem item) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = item;
        });
       
      },
      child: SizedBox(
        width: 50,
        child: 
        // Stack(
        //   children: <Widget>[
        //     selectedItem == item
        //         ? Center(
        //             child: Container(
        //               height: 70,
        //               width: 70,
        //               decoration: BoxDecoration(
        //                 shape: BoxShape.circle,
        //                 color: kPrimaryColorShadow,
        //               ),
        //             ),
        //           )
        //         : Container(),
            Center(
              child: Column(
                children: [
                  Icon(
                    item.iconData,
                    color: selectedItem == item ? kPrimaryColor : Colors.grey[400],
                    size: 22,
                  ),
                  Text(item.title,
                   style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              textStyle: TextStyle(
                                  color: kPrimaryColor, letterSpacing: .5),
                            ),
                   )
                ],
              ),
            )
        //   ],
        // ),
      ),
    );
  }
}

  List<Car> cars = getCarList();
    List<Dealer> dealers = getDealerList();

Widget buildBuyCarTab(){
   List<Widget> buildDeals() {
    List<Widget> list = [];
    for (var i = 0; i < cars.length; i++) {
      list.add(GestureDetector(
         
          child: buildCar(cars[i], i)));
    }
    return list;
  }
    List<Widget> buildDealers() {
    List<Widget> list = [];
    for (var i = 0; i < dealers.length; i++) {
      list.add(buildDealer(dealers[i], i));
    }
    return list;
  }
  return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: EdgeInsets.only(
                    left: 30,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 24.0, left: 16.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOP DEALS",
                            style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                        color: Colors.grey[400],letterSpacing: .5),
                                  ),
                           
                          ),
                          Row(
                            children: [
                              Text(
                                "view all",
                                     style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                      color: kPrimaryColor,letterSpacing: .5),
                                  ),
                              
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 240,
                    
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: buildDeals(),
                      ),
                    ),

                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(builder: (context) => AvailableCars()),
                    //     );
                    //   },
                    //   child:
                    Padding(
                      padding: EdgeInsets.only(top: 16, right: 16, left: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        padding: EdgeInsets.all(24),
                        height: 95,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Available Cars",
                                  style: GoogleFonts.lato(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                        color: Colors.white, letterSpacing: .5),
                                  ),
                                ),
                                Text(
                                  "Long term and short term",
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                            
                                    textStyle: TextStyle(
                                        color: Colors.white, letterSpacing: .5),
                                  ),
                                 
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              height: 40,
                              width: 40,
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: kPrimaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // ),

                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TOP DEALERS",
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              textStyle: TextStyle(
                                  color: Colors.grey[400], letterSpacing: .5),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "view all",
                                 style: GoogleFonts.lato(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                      color: kPrimaryColor,letterSpacing: .5),
                                  ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 150,
                      margin: EdgeInsets.only(bottom: 16),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: buildDealers(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}

Widget buildSellCarTab(BuildContext context) {
  return  Padding(
    padding: const EdgeInsets.all(10.0),
    child: SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          CarImagePicker(),
      
        CustomDropdown(
      items: carMakers,
      hint: "Please select a Car Maker",
      onChanged: (value) {
        log("Selected: $value");
      },
      ),
       CustomDropdown(
      items: models,
      hint: "Please select a Car Model",
      onChanged: (value) {
        log("Selected: $value");
      },
      ),
       CustomDropdown(
      items: bodyTypes,
      hint: "Please choose a body type",
      onChanged: (value) {
        log("Selected: $value");
      },
      ),     CustomDropdown(
      items: colors,
      hint: "Please select a Car color",
      onChanged: (value) {
        log("Selected: $value");
      },
      ),
       CustomDropdown(
      items: dimensions.map((dim) => 
        "H: ${dim['height']}cm, W: ${dim['width']}cm, L: ${dim['length']}cm").toList(),
      hint: "Select Dimensions",
      onChanged: (value) {
        log("Selected Dimensions: $value");
      },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Expanded(
      
        child: CustomDropdown(
        items: seatNumbers.map((e) => "$e Seats").toList(),
        hint: "Seat Number",
        onChanged: (value) {
          log("Selected Seats: $value");
        },
        ),
      ),
      SizedBox(width: 10),
       Expanded(
         
        child: 
      CustomDropdown(
      items: doorNumbers.map((e) => "$e Doors").toList(),
      hint: "Door Number",
      onChanged: (value) {
        log("Selected Doors: $value");
      },
      ),
      ),
      
      ],),
      // ignore: avoid_types_as_parameter_names
      CustomYearPicker(onYearSelected: (int ) {  },),
      CustomTextField(
        title: 'Selling Price',
        suffix: '\$',
        hint: '5000', onChanged: (_){}),
      
          CustomTextField(
        title: 'Runned Miles',
         suffix: 'mph',
        hint: '5000', onChanged: (_){}),
      ContinueButton(
        onPressed: () {
Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ExplanationScreen(
                            suggestedPrice: 5000,
                          )),
                        );
        },
      ),
      
      
      ],),
    ),
  );
  // Center(
  //   child: Text(
  //     "Sell Your Car Here!",
  //     style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
  //   ),
  // );
}


Widget buildProfileTab() {
  return Center(
    child: Text(
      "User Profile",
      style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  );
}