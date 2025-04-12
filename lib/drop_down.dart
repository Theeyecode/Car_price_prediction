import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String hint;
  final Function(String) onChanged;

  const CustomDropdown({super.key, 
    required this.items,
    required this.hint,
    required this.onChanged,
  });

  @override
  CustomDropdownState createState() => CustomDropdownState();
}

class CustomDropdownState extends State<CustomDropdown> {
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black54, width: 1),
      ),
      child: PopupMenuButton<String>(
        onSelected: (String value) {
          setState(() {
            _selectedItem = value;
          });
          widget.onChanged(value);
        },
        itemBuilder: (BuildContext context) {
          return widget.items.map((String value) {
            return PopupMenuItem<String>(
              value: value,
              child: Text(value, 
              style: GoogleFonts.lato(
                               
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(
                                        color: Colors.black,),
                                  ),
       ),
            );
          }).toList();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _selectedItem ?? widget.hint,

               style: GoogleFonts.lato(
                               
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    textStyle: TextStyle(
                                        color: Colors.black,),
                                  ),
            
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black),
          ],
        ),
      ),
    );
  }
}



class CustomTextField extends StatefulWidget {
  final String hint;
  final String title;
  final String? suffix;

  final Function(String) onChanged;

  const CustomTextField({super.key, 
    required this.hint,
    required this.title,

    required this.onChanged, this.suffix,
  });

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose(); // Dispose of controller to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Text(widget.title, style: GoogleFonts.lato(
                                     
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          textStyle: TextStyle(
                                              color: Colors.black,),
                                        ),),
        SizedBox(
          height: 40,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black54, width: 1),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onChanged: widget.onChanged,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.hint,
                        hintStyle: GoogleFonts.lato(
                                           
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                textStyle: TextStyle(
                                                    color: Colors.black54,),
                                              ),
                            
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
                if (widget.suffix != null) // Show suffix if provided
                Text(
                  widget.suffix!,
                  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            )
             
          ),
          
        ),
      ],
    );
  }
}



class CustomYearPicker extends StatefulWidget {
  final Function(int) onYearSelected;

  const CustomYearPicker({super.key, required this.onYearSelected});

  @override
  CustomYearPickerState createState() => CustomYearPickerState();
}

class CustomYearPickerState extends State<CustomYearPicker> {
  int _selectedYear = DateTime.now().year;

  void _showYearPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: 250,
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              // Done Button
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    widget.onYearSelected(_selectedYear);
                  },
                  child: Text(
                    "Done",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
              ),
              // iOS Year Picker
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.monthYear,
                  initialDateTime: DateTime(_selectedYear),
                  minimumDate: DateTime(1900), // Set minimum year
                  maximumDate: DateTime(DateTime.now().year), // Set max year (current year)
                  onDateTimeChanged: (DateTime newDate) {
                    setState(() {
                      _selectedYear = newDate.year;
                    });
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showYearPicker(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black54, width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Year: $_selectedYear",
              style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Icon(Icons.calendar_today, color: Colors.black),
          ],
        ),
      ),
    );
  }
}



class ContinueButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ContinueButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120, // Adjust width if needed
      height: 45, // Adjust height if needed
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:     Color(0xFF3C8899), // Button color
          foregroundColor: Colors.white, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          elevation: 4, // Button shadow
        ),
        child: Text(
          "Continue",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
