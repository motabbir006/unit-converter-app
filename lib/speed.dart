import 'package:flutter/material.dart';
import 'package:unit_converter_app/weight.dart';
import 'homepage.dart';

class speed extends StatefulWidget {
  const speed({Key? key}) : super(key: key);

  @override
  _TempConverterState createState() => _TempConverterState();
}

class _TempConverterState extends State<speed> {
  double inputValue = 0.0;
  double resultValue = 0.0;
  String selectedUnitFrom = 'm/s';
  String selectedUnitTo = 'km/h';

  final List<String> speedUnits = ['m/s', 'km/h', 'mph', 'ft/s', 'kts'];

  void convertUnits() {
    setState(() {
      if (selectedUnitFrom == 'm/s' && selectedUnitTo == 'km/h') {
        resultValue = inputValue * 3.6;
      } else if (selectedUnitFrom == 'm/s' && selectedUnitTo == 'mph') {
        resultValue = inputValue * 2.23694;
      } else if (selectedUnitFrom == 'm/s' && selectedUnitTo == 'ft/s') {
        resultValue = inputValue * 3.28084;
      } else if (selectedUnitFrom == 'm/s' && selectedUnitTo == 'kts') {
        resultValue = inputValue * 1.94384;
      } else if (selectedUnitFrom == 'km/h' && selectedUnitTo == 'm/s') {
        resultValue = inputValue / 3.6;
      } else if (selectedUnitFrom == 'km/h' && selectedUnitTo == 'mph') {
        resultValue = inputValue / 1.60934;
      } else if (selectedUnitFrom == 'km/h' && selectedUnitTo == 'ft/s') {
        resultValue = inputValue * 0.911344;
      } else if (selectedUnitFrom == 'km/h' && selectedUnitTo == 'kts') {
        resultValue = inputValue / 1.852;
      } else if (selectedUnitFrom == 'mph' && selectedUnitTo == 'm/s') {
        resultValue = inputValue / 2.23694;
      } else if (selectedUnitFrom == 'mph' && selectedUnitTo == 'km/h') {
        resultValue = inputValue * 1.60934;
      } else if (selectedUnitFrom == 'mph' && selectedUnitTo == 'ft/s') {
        resultValue = inputValue * 1.46667;
      } else if (selectedUnitFrom == 'mph' && selectedUnitTo == 'kts') {
        resultValue = inputValue / 1.15078;
      } else if (selectedUnitFrom == 'ft/s' && selectedUnitTo == 'm/s') {
        resultValue = inputValue / 3.28084;
      } else if (selectedUnitFrom == 'ft/s' && selectedUnitTo == 'km/h') {
        resultValue = inputValue / 0.911344;
      } else if (selectedUnitFrom == 'ft/s' && selectedUnitTo == 'mph') {
        resultValue = inputValue / 1.46667;
      } else if (selectedUnitFrom == 'ft/s' && selectedUnitTo == 'kts') {
        resultValue = inputValue / 1.68781;
      } else if (selectedUnitFrom == 'kts' && selectedUnitTo == 'm/s') {
        resultValue = inputValue / 1.94384;
      } else if (selectedUnitFrom == 'kts' && selectedUnitTo == 'km/h') {
        resultValue = inputValue * 1.852;
      } else if (selectedUnitFrom == 'kts' && selectedUnitTo == 'mph') {
        resultValue = inputValue * 1.15078;
      } else if (selectedUnitFrom == 'kts' && selectedUnitTo == 'ft/s') {
        resultValue = inputValue * 1.68781;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Speed Converter',
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
                items: speedUnits.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
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
                    fontWeight: FontWeight.w400),
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
                items: speedUnits.map((String value) {
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
              icon: Icon(Icons.monitor_weight), label: "Weight"),
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
            // Navigate to HomePage
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => weight()),
            );
          }
        },
      ),
    );
  }
}
