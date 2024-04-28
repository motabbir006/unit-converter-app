import 'package:flutter/material.dart';
import 'package:unit_converter_app/area.dart';
import 'homepage.dart';

class weight extends StatefulWidget {
  const weight({Key? key}) : super(key: key);

  @override
  _TempConverterState createState() => _TempConverterState();
}

class _TempConverterState extends State<weight> {
  double inputValue = 0.0;
  double resultValue = 0.0;
  String selectedUnitFrom = 'Kilograms';
  String selectedUnitTo = 'Grams';

  final List<String> weightUnits = [
    'Kilograms',
    'Grams',
    'Milligrams',
    'Metric tons',
    'Pounds',
    'Ounces',
  ];

  void convertUnits() {
    setState(() {
      if (selectedUnitFrom == 'Kilograms') {
        switch (selectedUnitTo) {
          case 'Grams':
            resultValue = inputValue * 1000;
            break;
          case 'Milligrams':
            resultValue = inputValue * 1000000;
            break;
          case 'Metric tons':
            resultValue = inputValue / 1000;
            break;
          case 'Pounds':
            resultValue = inputValue * 2.20462;
            break;
          case 'Ounces':
            resultValue = inputValue * 35.274;
            break;
          default:
            resultValue = inputValue;
        }
      } else if (selectedUnitFrom == 'Grams') {
        switch (selectedUnitTo) {
          case 'Kilograms':
            resultValue = inputValue / 1000;
            break;
          case 'Milligrams':
            resultValue = inputValue * 1000;
            break;
          case 'Metric tons':
            resultValue = inputValue / 1000000;
            break;
          case 'Pounds':
            resultValue = inputValue / 453.592;
            break;
          case 'Ounces':
            resultValue = inputValue / 28.3495;
            break;
          default:
            resultValue = inputValue;
        }
      } else if (selectedUnitFrom == 'Milligrams') {
        switch (selectedUnitTo) {
          case 'Kilograms':
            resultValue = inputValue / 1000000;
            break;
          case 'Grams':
            resultValue = inputValue / 1000;
            break;
          case 'Metric tons':
            resultValue = inputValue / 1000000000;
            break;
          case 'Pounds':
            resultValue = inputValue / 453592;
            break;
          case 'Ounces':
            resultValue = inputValue / 28349.5;
            break;
          default:
            resultValue = inputValue;
        }
      } else if (selectedUnitFrom == 'Metric tons') {
        switch (selectedUnitTo) {
          case 'Kilograms':
            resultValue = inputValue * 1000;
            break;
          case 'Grams':
            resultValue = inputValue * 1000000;
            break;
          case 'Milligrams':
            resultValue = inputValue * 1000000000;
            break;
          case 'Pounds':
            resultValue = inputValue * 2204.62;
            break;
          case 'Ounces':
            resultValue = inputValue * 35274;
            break;
          default:
            resultValue = inputValue;
        }
      } else if (selectedUnitFrom == 'Pounds') {
        switch (selectedUnitTo) {
          case 'Kilograms':
            resultValue = inputValue / 2.20462;
            break;
          case 'Grams':
            resultValue = inputValue * 453.592;
            break;
          case 'Milligrams':
            resultValue = inputValue * 453592;
            break;
          case 'Metric tons':
            resultValue = inputValue / 2204.62;
            break;
          case 'Ounces':
            resultValue = inputValue * 16;
            break;
          default:
            resultValue = inputValue;
        }
      } else if (selectedUnitFrom == 'Ounces') {
        switch (selectedUnitTo) {
          case 'Kilograms':
            resultValue = inputValue / 35.274;
            break;
          case 'Grams':
            resultValue = inputValue * 28.3495;
            break;
          case 'Milligrams':
            resultValue = inputValue * 28349.5;
            break;
          case 'Metric tons':
            resultValue = inputValue / 35274;
            break;
          case 'Pounds':
            resultValue = inputValue / 16;
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
          'Weight Converter',
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
                items: weightUnits.map((String value) {
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
                items: weightUnits.map((String value) {
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
              icon: Icon(Icons.area_chart_rounded), label: "Area"),
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
              MaterialPageRoute(builder: (context) => areac()),
            );
          }
        },
      ),
    );
  }
}
