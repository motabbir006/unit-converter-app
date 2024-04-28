import 'package:flutter/material.dart';
import 'package:unit_converter_app/temp.dart';
import 'homepage.dart';

class len extends StatefulWidget {
  const len({super.key});

  @override
  _LengthConverterState createState() => _LengthConverterState();
}

class _LengthConverterState extends State {
  double inputValue = 0.0;
  double resultValue = 0.0;
  String selectedUnitFrom = 'Meter';
  String selectedUnitTo = 'Centimeter';
  String selectedUnitToFeet = 'Feet';

  final List<String> lengthUnits = ['Meter', 'Centimeter', 'Inch', 'Feet'];

  void convertUnits() {
    setState(() {
      if (selectedUnitFrom == 'Meter' && selectedUnitTo == 'Centimeter') {
        resultValue = inputValue * 100;
      } else if (selectedUnitFrom == 'Meter' && selectedUnitTo == 'Inch') {
        resultValue = inputValue * 39.37;
      } else if (selectedUnitFrom == 'Meter' && selectedUnitToFeet == 'Feet') {
        //  Meter to Feet
        resultValue = inputValue * 3.28084;
      } else if (selectedUnitFrom == 'Centimeter' &&
          selectedUnitTo == 'Meter') {
        resultValue = inputValue / 100;
      } else if (selectedUnitFrom == 'Centimeter' && selectedUnitTo == 'Inch') {
        resultValue = inputValue / 2.54;
      } else if (selectedUnitFrom == 'Centimeter' &&
          selectedUnitToFeet == 'Feet') {
        // Centimeter to Feet
        resultValue = inputValue / 30.48;
      } else if (selectedUnitFrom == 'Inch' && selectedUnitTo == 'Meter') {
        resultValue = inputValue * 0.0254;
      } else if (selectedUnitFrom == 'Inch' && selectedUnitTo == 'Centimeter') {
        resultValue = inputValue * 2.54;
      } else if (selectedUnitFrom == 'Inch' && selectedUnitToFeet == 'Feet') {
        // Inch to Feet
        resultValue = inputValue / 12;
      } else if (selectedUnitFrom == 'Feet' && selectedUnitTo == 'Meter') {
        // Feet to Meter
        resultValue = inputValue * 0.3048;
      } else if (selectedUnitFrom == 'Feet' && selectedUnitTo == 'Centimeter') {
        // Feet to Centimeter
        resultValue = inputValue * 30.48;
      } else if (selectedUnitFrom == 'Feet' && selectedUnitTo == 'Inch') {
        // Feet to Inch
        resultValue = inputValue * 12;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Length Converter',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DropdownButton<String>(
                value: selectedUnitFrom,
                onChanged: (value) {
                  setState(() {
                    selectedUnitFrom = value!;
                  });
                },
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),

                icon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_drop_down, color: Colors.green),
                ), // Add dropdown icon
                iconSize: 34.0,
                elevation: 16,
                underline: Container(
                  height: 3,
                  color: Colors.green, // Set underline color
                ),
                items: lengthUnits.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400), // Set item text color
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    inputValue = double.tryParse(value) ?? 0.0;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter value',
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                ),
              ),
              const SizedBox(height: 16),
              DropdownButton<String>(
                value: selectedUnitTo,
                onChanged: (value) {
                  setState(() {
                    selectedUnitTo = value!;
                  });
                },
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400 // Set text size
                    ),
                icon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_drop_down, color: Colors.green),
                ), // Add dropdown icon
                iconSize: 34.0,
                // focusColor: Colors.red,
                elevation: 16,
                underline: Container(
                  height: 3,
                  color: Colors.green[400], // Set underline color
                ),
                items: lengthUnits.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                          color: Colors.black), // Set item text color
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  convertUnits();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              resultValue != 0.0
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Result: ${resultValue.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.thermostat), label: "Temperature"),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        iconSize: 28,
        backgroundColor: Colors.green,
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => TempC()), //demo
            );
          }
        },
      ),
    );
  }
}
