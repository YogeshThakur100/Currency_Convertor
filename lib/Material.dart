// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Functions extends StatefulWidget {
  const Functions({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Functions();
  }
}

class _Functions extends State {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 76, 101, 109),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'INR ${result == 0 ? result.toStringAsFixed(0) : result.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                decoration: const InputDecoration(
                  hintText: "Enter the amount in USD",
                  fillColor: Colors.white,
                  prefixText: '                ',
                  filled: true,
                  prefixIconColor: Colors.black,
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 80;
                  });
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 70),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
