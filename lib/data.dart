import 'package:flutter/material.dart';
import 'area.dart';
import 'homepage.dart';

class data extends StatefulWidget {
  const data({Key? key}) : super(key: key);
  @override
  _TempConverterState createState() => _TempConverterState();
}

class _TempConverterState extends State<data> {
  double inputValue = 0.0;
  double resultValue = 0.0;
  String selectedUnitFrom = 'Bytes';
  String selectedUnitTo = 'Kilobytes';

  final List<String> dataUnits = [
    'Bytes',
    'Kilobytes',
    'Megabytes',
    'Gigabytes',
    'Terabytes',
    'Petabytes',
    'Exabytes',
    'Zettabytes'
  ];

  void convertUnits() {
    setState(() {
      // bytes to other units
      if (selectedUnitFrom == 'Bytes') {
        switch (selectedUnitTo) {
          case 'Kilobytes':
            resultValue = inputValue / 1024;
            break;
          case 'Megabytes':
            resultValue = inputValue / (1024 * 1024);
            break;
          case 'Gigabytes':
            resultValue = inputValue / (1024 * 1024 * 1024);
            break;
          case 'Terabytes':
            resultValue = inputValue / (1024 * 1024 * 1024 * 1024);
            break;
          case 'Petabytes':
            resultValue = inputValue / (1024 * 1024 * 1024 * 1024 * 1024);
            break;
          case 'Exabytes':
            resultValue =
                inputValue / (1024 * 1024 * 1024 * 1024 * 1024 * 1024);
            break;
          case 'Zettabytes':
            resultValue =
                inputValue / (1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024);
            break;
          default:
            resultValue = inputValue;
        }
      }
      // kilobytes to other units
      else if (selectedUnitFrom == 'Kilobytes') {
        switch (selectedUnitTo) {
          case 'Bytes':
            resultValue = inputValue * 1024;
            break;
          case 'Megabytes':
            resultValue = inputValue / 1024;
            break;
          case 'Gigabytes':
            resultValue = inputValue / (1024 * 1024);
            break;
          case 'Terabytes':
            resultValue = inputValue / (1024 * 1024 * 1024);
            break;
          case 'Petabytes':
            resultValue = inputValue / (1024 * 1024 * 1024 * 1024);
            break;
          case 'Exabytes':
            resultValue = inputValue / (1024 * 1024 * 1024 * 1024 * 1024);
            break;
          case 'Zettabytes':
            resultValue =
                inputValue / (1024 * 1024 * 1024 * 1024 * 1024 * 1024);
            break;
          default:
            resultValue = inputValue;
        }
      }
      // megabytes to other units
      else if (selectedUnitFrom == 'Megabytes') {
        switch (selectedUnitTo) {
          case 'Bytes':
            resultValue = inputValue * 1024 * 1024;
            break;
          case 'Kilobytes':
            resultValue = inputValue * 1024;
            break;
          case 'Gigabytes':
            resultValue = inputValue / 1024;
            break;
          case 'Terabytes':
            resultValue = inputValue / (1024 * 1024);
            break;
          case 'Petabytes':
            resultValue = inputValue / (1024 * 1024 * 1024);
            break;
          case 'Exabytes':
            resultValue = inputValue / (1024 * 1024 * 1024 * 1024);
            break;
          case 'Zettabytes':
            resultValue = inputValue / (1024 * 1024 * 1024 * 1024 * 1024);
            break;
          default:
            resultValue = inputValue;
        }
      }
      // gigabytes to other units
      else if (selectedUnitFrom == 'Gigabytes') {
        switch (selectedUnitTo) {
          case 'Bytes':
            resultValue = inputValue * 1024 * 1024 * 1024;
            break;
          case 'Kilobytes':
            resultValue = inputValue * 1024 * 1024;
            break;
          case 'Megabytes':
            resultValue = inputValue * 1024;
            break;
          case 'Terabytes':
            resultValue = inputValue / 1024;
            break;
          case 'Petabytes':
            resultValue = inputValue / (1024 * 1024);
            break;
          case 'Exabytes':
            resultValue = inputValue / (1024 * 1024 * 1024);
            break;
          case 'Zettabytes':
            resultValue = inputValue / (1024 * 1024 * 1024 * 1024);
            break;
          default:
            resultValue = inputValue;
        }
      }
      // terabytes to other units
      else if (selectedUnitFrom == 'Terabytes') {
        switch (selectedUnitTo) {
          case 'Bytes':
            resultValue = inputValue * 1024 * 1024 * 1024 * 1024;
            break;
          case 'Kilobytes':
            resultValue = inputValue * 1024 * 1024 * 1024;
            break;
          case 'Megabytes':
            resultValue = inputValue * 1024 * 1024;
            break;
          case 'Gigabytes':
            resultValue = inputValue * 1024;
            break;
          case 'Petabytes':
            resultValue = inputValue / 1024;
            break;
          case 'Exabytes':
            resultValue = inputValue / (1024 * 1024);
            break;
          case 'Zettabytes':
            resultValue = inputValue / (1024 * 1024 * 1024);
            break;
          default:
            resultValue = inputValue;
        }
      }
      //  petabytes to other units
      else if (selectedUnitFrom == 'Petabytes') {
        switch (selectedUnitTo) {
          case 'Bytes':
            resultValue = inputValue * 1024 * 1024 * 1024 * 1024 * 1024;
            break;
          case 'Kilobytes':
            resultValue = inputValue * 1024 * 1024 * 1024 * 1024;
            break;
          case 'Megabytes':
            resultValue = inputValue * 1024 * 1024 * 1024;
            break;
          case 'Gigabytes':
            resultValue = inputValue * 1024 * 1024;
            break;
          case 'Terabytes':
            resultValue = inputValue * 1024;
            break;
          case 'Exabytes':
            resultValue = inputValue / 1024;
            break;
          case 'Zettabytes':
            resultValue = inputValue / (1024 * 1024);
            break;
          default:
            resultValue = inputValue;
        }
      }
      //  exabytes to other units
      else if (selectedUnitFrom == 'Exabytes') {
        switch (selectedUnitTo) {
          case 'Bytes':
            resultValue = inputValue * 1024 * 1024 * 1024 * 1024 * 1024 * 1024;
            break;
          case 'Kilobytes':
            resultValue = inputValue * 1024 * 1024 * 1024 * 1024 * 1024;
            break;
          case 'Megabytes':
            resultValue = inputValue * 1024 * 1024 * 1024 * 1024;
            break;
          case 'Gigabytes':
            resultValue = inputValue * 1024 * 1024 * 1024;
            break;
          case 'Terabytes':
            resultValue = inputValue * 1024 * 1024;
            break;
          case 'Petabytes':
            resultValue = inputValue * 1024;
            break;
          case 'Zettabytes':
            resultValue = inputValue / 1024;
            break;
          default:
            resultValue = inputValue;
        }
      }
      // zettabytes to other units
      else if (selectedUnitFrom == 'Zettabytes') {
        switch (selectedUnitTo) {
          case 'Bytes':
            resultValue =
                inputValue * 1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024;
            break;
          case 'Kilobytes':
            resultValue = inputValue * 1024 * 1024 * 1024 * 1024 * 1024 * 1024;
            break;
          case 'Megabytes':
            resultValue = inputValue * 1024 * 1024 * 1024 * 1024 * 1024;
            break;
          case 'Gigabytes':
            resultValue = inputValue * 1024 * 1024 * 1024 * 1024;
            break;
          case 'Terabytes':
            resultValue = inputValue * 1024 * 1024 * 1024;
            break;
          case 'Petabytes':
            resultValue = inputValue * 1024 * 1024;
            break;
          case 'Exabytes':
            resultValue = inputValue * 1024;
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
                items: dataUnits.map((String value) {
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
                items: dataUnits.map((String value) {
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
              icon: Icon(Icons.feedback), label: "Feedback"),
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
              MaterialPageRoute(builder: (context) => areac()),
            );
          }
        },
      ),
    );
  }
}
