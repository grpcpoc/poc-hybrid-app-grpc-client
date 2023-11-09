import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key, required this.onPressed, required this.label});

  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(label),
        ),
      ),
    );
  }
}
