import 'package:flutter/material.dart';
import 'package:unit_converter_app/area.dart';
import 'package:unit_converter_app/length.dart';
import 'package:unit_converter_app/speed.dart';
import 'package:unit_converter_app/temp.dart';
import 'package:unit_converter_app/volume.dart';
import 'package:unit_converter_app/weight.dart';

import 'data.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  ElevatedButton buildElevatedButtonWithIcon(String label, IconData icon, {VoidCallback? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        alignment: Alignment.centerLeft,
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 24.0),
        textStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 22.0,
        ),
        elevation: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Icon(icon,color: Colors.black87, size: 25, ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Unit Converter',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                border: const Border(
                  bottom: BorderSide(color: Colors.white10, width: 5),
                  top: BorderSide(color: Colors.white10, width: 5),
                  left: BorderSide(color: Colors.red, width: 15),
                  right: BorderSide(color: Colors.deepPurple, width: 15),
                ),
                color: Colors.grey[400],
              ),
              child: ListView(
                shrinkWrap: true,
                children: [
                  buildElevatedButtonWithIcon(
                    'Length ',
                    Icons.linear_scale, // Icon for Length
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => len(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  buildElevatedButtonWithIcon(
                    'Temperature',
                    Icons.thermostat, // Icon for Temperature
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TempC(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  buildElevatedButtonWithIcon(
                    'Speed',
                    Icons.speed, // Icon for Temperature
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => speed(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  buildElevatedButtonWithIcon(
                    'Weight Converter:',
                    Icons.monitor_weight, // Icon for Temperature
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => weight(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  buildElevatedButtonWithIcon(
                    'Data Converter',
                    Icons.data_object, // Icon for Temperature
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => data(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  buildElevatedButtonWithIcon(
                    'Area Converter',
                    Icons.area_chart_rounded, // Icon for Temperature
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => areac(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  buildElevatedButtonWithIcon(
                    'Volume Converter',
                    Icons.gas_meter, // Icon for Temperature
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => volume(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.linear_scale), label: "Length"),
        ],
        currentIndex: 0, // Set the index of the selected item
        selectedItemColor: Colors.red, // Set the color of the selected item
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
          }
          else{
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => len()),//demo
            );
          }
        },
      ),
    );
  }
}
