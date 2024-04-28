import 'package:flutter/material.dart';
import 'package:unit_converter_app/length.dart';
import 'homepage.dart';

class volume extends StatefulWidget {
  const volume({Key? key}) : super(key: key);

  @override
  _TempConverterState createState() => _TempConverterState();
}

class _TempConverterState extends State<volume> {
  double inputValue = 0.0;
  double resultValue = 0.0;
  String selectedUnitFrom = 'Cubic meters';
  String selectedUnitTo = 'Liters';

  final List<String> volumeUnits = [
    'Cubic meters',
    'Liters',
    'Cubic centimeters',
    'Milliliters',
    'Cubic feet',
    'Cubic inches',
    'Gallons (US)',
    'Gallons (UK)',
  ];

  void convertUnits() {
    setState(() {
      switch (selectedUnitFrom) {
        case 'Cubic meters':
          switch (selectedUnitTo) {
            case 'Liters':
              resultValue = inputValue * 1000;
              break;
            case 'Cubic centimeters':
              resultValue = inputValue * 1000000;
              break;
            case 'Milliliters':
              resultValue = inputValue * 1000000;
              break;
            case 'Cubic feet':
              resultValue = inputValue * 35.3147;
              break;
            case 'Cubic inches':
              resultValue = inputValue * 61023.7;
              break;
            case 'Gallons (US)':
              resultValue = inputValue * 264.172;
              break;
            case 'Gallons (UK)':
              resultValue = inputValue * 219.969;
              break;
          }
          break;
        case 'Liters':
          switch (selectedUnitTo) {
            case 'Cubic meters':
              resultValue = inputValue / 1000;
              break;
            case 'Cubic centimeters':
              resultValue = inputValue * 1000;
              break;
            case 'Milliliters':
              resultValue = inputValue * 1000;
              break;
            case 'Cubic feet':
              resultValue = inputValue * 0.0353147;
              break;
            case 'Cubic inches':
              resultValue = inputValue * 61.0237;
              break;
            case 'Gallons (US)':
              resultValue = inputValue * 0.264172;
              break;
            case 'Gallons (UK)':
              resultValue = inputValue * 0.219969;
              break;
          }
          break;
        case 'Cubic centimeters':
          switch (selectedUnitTo) {
            case 'Cubic meters':
              resultValue = inputValue / 1000000;
              break;
            case 'Liters':
              resultValue = inputValue / 1000;
              break;
            case 'Milliliters':
              resultValue = inputValue;
              break;
            case 'Cubic feet':
              resultValue = inputValue * 0.0000353147;
              break;
            case 'Cubic inches':
              resultValue = inputValue * 0.0610237;
              break;
            case 'Gallons (US)':
              resultValue = inputValue * 0.000264172;
              break;
            case 'Gallons (UK)':
              resultValue = inputValue * 0.000219969;
              break;
          }
          break;
        case 'Milliliters':
          switch (selectedUnitTo) {
            case 'Cubic meters':
              resultValue = inputValue / 1000000;
              break;
            case 'Liters':
              resultValue = inputValue / 1000;
              break;
            case 'Cubic centimeters':
              resultValue = inputValue;
              break;
            case 'Cubic feet':
              resultValue = inputValue * 0.0000353147;
              break;
            case 'Cubic inches':
              resultValue = inputValue * 0.0610237;
              break;
            case 'Gallons (US)':
              resultValue = inputValue * 0.000264172;
              break;
            case 'Gallons (UK)':
              resultValue = inputValue * 0.000219969;
              break;
            // Add more conversions as needed
          }
          break;
        case 'Cubic feet':
          switch (selectedUnitTo) {
            case 'Cubic meters':
              resultValue = inputValue / 35.3147;
              break;
            case 'Liters':
              resultValue = inputValue / 0.0353147;
              break;
            case 'Cubic centimeters':
              resultValue = inputValue / 0.0000353147;
              break;
            case 'Milliliters':
              resultValue = inputValue / 0.0000353147;
              break;
            case 'Cubic inches':
              resultValue = inputValue * 1728;
              break;
            case 'Gallons (US)':
              resultValue = inputValue * 7.48052;
              break;
            case 'Gallons (UK)':
              resultValue = inputValue * 6.22884;
              break;
            // Add more conversions as needed
          }
          break;
        case 'Cubic inches':
          switch (selectedUnitTo) {
            case 'Cubic meters':
              resultValue = inputValue / 61023.7;
              break;
            case 'Liters':
              resultValue = inputValue / 61.0237;
              break;
            case 'Cubic centimeters':
              resultValue = inputValue / 0.0610237;
              break;
            case 'Milliliters':
              resultValue = inputValue / 0.0610237;
              break;
            case 'Cubic feet':
              resultValue = inputValue / 1728;
              break;
            case 'Gallons (US)':
              resultValue = inputValue / 231;
              break;
            case 'Gallons (UK)':
              resultValue = inputValue / 277.42;
              break;
            // Add more conversions as needed
          }
          break;
        case 'Gallons (US)':
          switch (selectedUnitTo) {
            case 'Cubic meters':
              resultValue = inputValue / 264.172;
              break;
            case 'Liters':
              resultValue = inputValue / 0.264172;
              break;
            case 'Cubic centimeters':
              resultValue = inputValue / 0.000264172;
              break;
            case 'Milliliters':
              resultValue = inputValue / 0.000264172;
              break;
            case 'Cubic feet':
              resultValue = inputValue / 7.48052;
              break;
            case 'Cubic inches':
              resultValue = inputValue * 231;
              break;
            case 'Gallons (UK)':
              resultValue = inputValue * 0.832674;
              break;
            // Add more conversions as needed
          }
          break;
        case 'Gallons (UK)':
          switch (selectedUnitTo) {
            case 'Cubic meters':
              resultValue = inputValue / 219.969;
              break;
            case 'Liters':
              resultValue = inputValue / 0.219969;
              break;
            case 'Cubic centimeters':
              resultValue = inputValue / 0.000219969;
              break;
            case 'Milliliters':
              resultValue = inputValue / 0.000219969;
              break;
            case 'Cubic feet':
              resultValue = inputValue / 6.22884;
              break;
            case 'Cubic inches':
              resultValue = inputValue * 277.42;
              break;
            case 'Gallons (US)':
              resultValue = inputValue / 0.832674;
              break;
            // Add more conversions as needed
          }
          break;
        // Add more cases for other units
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Area Converter',
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
                ),
                iconSize: 34.0,
                elevation: 16,
                underline: Container(
                  height: 3,
                  color: Colors.green,
                ),
                items: volumeUnits.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
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
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
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
                  fontWeight: FontWeight.w400,
                ),
                icon: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_drop_down, color: Colors.green),
                ),
                iconSize: 34.0,
                elevation: 16,
                underline: Container(
                  height: 3,
                  color: Colors.green[400],
                ),
                items: volumeUnits.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(color: Colors.black),
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
              icon: Icon(Icons.linear_scale), label: "Length"),
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
              MaterialPageRoute(builder: (context) => len()), //demo
            );
          }
        },
      ),
    );
  }
}
