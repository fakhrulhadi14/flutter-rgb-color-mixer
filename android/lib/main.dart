import 'package:flutter/material.dart';
import 'color_circle.dart';
import 'color_value_changer.dart';

void main() {
  runApp(const ColorMixerApp());
}

class ColorMixerApp extends StatelessWidget {
  const ColorMixerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RGB Color Mixer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ColorMixerScreen(),
    );
  }
}

class ColorMixerScreen extends StatefulWidget {
  const ColorMixerScreen({super.key});

  @override
  State<ColorMixerScreen> createState() => _ColorMixerScreenState();
}

class _ColorMixerScreenState extends State<ColorMixerScreen> {
  double redValue = 0;
  double greenValue = 0;
  double blueValue = 0;

  @override
  Widget build(BuildContext context) {
    Color selectedColor = Color.fromRGBO(
      redValue.toInt(),
      greenValue.toInt(),
      blueValue.toInt(),
      1,
    );

    return Scaffold(
      appBar: AppBar(title: const Text("RGB Color Mixer"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ColorCircle(color: selectedColor),

            const SizedBox(height: 30),

            ColorValueChanger(
              colorName: "Red",
              value: redValue,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  redValue = value;
                });
              },
            ),

            ColorValueChanger(
              colorName: "Green",
              value: greenValue,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {
                  greenValue = value;
                });
              },
            ),

            ColorValueChanger(
              colorName: "Blue",
              value: blueValue,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  blueValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
