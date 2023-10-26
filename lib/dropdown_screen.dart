import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownScreen extends StatelessWidget {
  const DropDownScreen({super.key});

  final selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey,
              ),
              child: DropdownButton2<String>(
                  value: selectedValue,
                  hint: const Text('Select a value'),
                  items: const [
                    DropdownMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 2',
                      child: Text('Option 2'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 3',
                      child: Text('Option 3'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 4',
                      child: Text('Option 4'),
                    ),
                  ],
                onChanged: (value) {
                  print('Selected value: $value');
                }, // items
              ),
            ),
          ],
        ),
      )
    );
  }
}
