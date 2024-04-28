import 'package:flutter/material.dart';
import 'package:unit_converter_app/volume.dart';

import 'homepage.dart';

class areac extends StatefulWidget {
  const areac({Key? key}) : super(key: key);

  @override
  _TempConverterState createState() => _TempConverterState();
}

class _TempConverterState extends State<areac> {
  double inputValue = 0.0;
  double resultValue = 0.0;
  String selectedUnitFrom = 'square meters';
  String selectedUnitTo = 'square feet';

  final List<String> areaUnits = [
    'square meters',
    'square kilometers',
    'square miles',
    'hectares',
    'acres',
    'square feet',
    'square yards',
    'square inches'
  ];
  void convertUnits() {
    setState(() {
      //  square meters to other units
      if (selectedUnitFrom == 'square meters') {
        switch (selectedUnitTo) {
          case 'square kilometers':
            resultValue = inputValue / 1000000;
            break;
          case 'square miles':
            resultValue = inputValue / 2589988.11;
            break;
          case 'hectares':
            resultValue = inputValue / 10000;
            break;
          case 'acres':
            resultValue = inputValue / 4046.856;
            break;
          case 'square feet':
            resultValue = inputValue * 10.7639;
            break;
          case 'square yards':
            resultValue = inputValue * 1.19599;
            break;
          case 'square inches':
            resultValue = inputValue * 1550.0031;
            break;
          default:
            resultValue = inputValue;
        }
      }
      // square kilometers to other units
      else if (selectedUnitFrom == 'square kilometers') {
        switch (selectedUnitTo) {
          case 'square meters':
            resultValue = inputValue * 1000000;
            break;
          case 'square miles':
            resultValue = inputValue / 2.589988;
            break;
          case 'hectares':
            resultValue = inputValue * 100;
            break;
          case 'acres':
            resultValue = inputValue * 247.105;
            break;
          case 'square feet':
            resultValue = inputValue * 10763910.41671;
            break;
          case 'square yards':
            resultValue = inputValue * 1195990.0463;
            break;
          case 'square inches':
            resultValue = inputValue * 1550003100.0062;
            break;
          default:
            resultValue = inputValue;
        }
      }
      // square miles to other units
      else if (selectedUnitFrom == 'square miles') {
        switch (selectedUnitTo) {
          case 'square meters':
            resultValue = inputValue * 2589988.11;
            break;
          case 'square kilometers':
            resultValue = inputValue * 2.589988;
            break;
          case 'hectares':
            resultValue = inputValue * 258.999;
            break;
          case 'acres':
            resultValue = inputValue * 640;
            break;
          case 'square feet':
            resultValue = inputValue * 27878400;
            break;
          case 'square yards':
            resultValue = inputValue * 3097600;
            break;
          case 'square inches':
            resultValue = inputValue * 4014489600;
            break;
          default:
            resultValue = inputValue;
        }
      }
      //hectares to other units
      else if (selectedUnitFrom == 'hectares') {
        switch (selectedUnitTo) {
          case 'square meters':
            resultValue = inputValue * 10000;
            break;
          case 'square kilometers':
            resultValue = inputValue / 100;
            break;
          case 'square miles':
            resultValue = inputValue / 258.999;
            break;
          case 'acres':
            resultValue = inputValue * 2.47105;
            break;
          case 'square feet':
            resultValue = inputValue * 107639.104;
            break;
          case 'square yards':
            resultValue = inputValue * 11959.9005;
            break;
          case 'square inches':
            resultValue = inputValue * 15500031.0001;
            break;
          default:
            resultValue = inputValue;
        }
      }
      //acres to other units
      else if (selectedUnitFrom == 'acres') {
        switch (selectedUnitTo) {
          case 'square meters':
            resultValue = inputValue * 4046.856;
            break;
          case 'square kilometers':
            resultValue = inputValue / 247.105;
            break;
          case 'square miles':
            resultValue = inputValue / 640;
            break;
          case 'hectares':
            resultValue = inputValue / 2.47105;
            break;
          case 'square feet':
            resultValue = inputValue * 43560;
            break;
          case 'square yards':
            resultValue = inputValue * 4840;
            break;
          case 'square inches':
            resultValue = inputValue * 6272640;
            break;
          default:
            resultValue = inputValue;
        }
      }
      //square feet to other units
      else if (selectedUnitFrom == 'square feet') {
        switch (selectedUnitTo) {
          case 'square meters':
            resultValue = inputValue / 10.7639;
            break;
          case 'square kilometers':
            resultValue = inputValue / 10763910.41671;
            break;
          case 'square miles':
            resultValue = inputValue / 27878400;
            break;
          case 'hectares':
            resultValue = inputValue / 107639.104;
            break;
          case 'acres':
            resultValue = inputValue / 43560;
            break;
          case 'square yards':
            resultValue = inputValue / 9;
            break;
          case 'square inches':
            resultValue = inputValue * 144;
            break;
          default:
            resultValue = inputValue;
        }
      }
      //square yards to other units
      else if (selectedUnitFrom == 'square yards') {
        switch (selectedUnitTo) {
          case 'square meters':
            resultValue = inputValue / 1.19599;
            break;
          case 'square kilometers':
            resultValue = inputValue / 1195990.0463;
            break;
          case 'square miles':
            resultValue = inputValue / 3097600;
            break;
          case 'hectares':
            resultValue = inputValue / 11959.9005;
            break;
          case 'acres':
            resultValue = inputValue / 4840;
            break;
          case 'square feet':
            resultValue = inputValue * 9;
            break;
          case 'square inches':
            resultValue = inputValue * 1296;
            break;
          default:
            resultValue = inputValue;
        }
      }
      //square inches to other units
      else if (selectedUnitFrom == 'square inches') {
        switch (selectedUnitTo) {
          case 'square meters':
            resultValue = inputValue / 1550.0031;
            break;
          case 'square kilometers':
            resultValue = inputValue / 1550003100.0062;
            break;
          case 'square miles':
            resultValue = inputValue / 4014489600;
            break;
          case 'hectares':
            resultValue = inputValue / 15500031.0001;
            break;
          case 'acres':
            resultValue = inputValue / 6272640;
            break;
          case 'square feet':
            resultValue = inputValue / 144;
            break;
          case 'square yards':
            resultValue = inputValue / 1296;
            break;
          default:
            resultValue = inputValue;
        }
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
                items: areaUnits.map((String value) {
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
                items: areaUnits.map((String value) {
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
          BottomNavigationBarItem(icon: Icon(Icons.gas_meter), label: "Volume"),
        ],
        currentIndex: 0, // Set the index of the selected item
        selectedItemColor: Colors.white, // Set the color of the selected item
        unselectedItemColor: Colors.white,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        iconSize: 28,
        backgroundColor: Colors.green,
        onTap: (int index) {
          if (index == 0) {
            // Navigate to HomePage
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => volume()), //demo
            );
          }
        },
      ),
    );
  }
}
