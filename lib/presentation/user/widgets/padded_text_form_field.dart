import 'package:flutter/material.dart';

class PaddedTextFormField extends StatelessWidget {
  final String label;
  final TextInputType textInputType;
  final ValueChanged<String> onChanged;
  final Icon icon;

  const PaddedTextFormField({
    Key? key,
    required this.label,
    required this.textInputType,
    required this.onChanged,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextFormField(
        decoration: InputDecoration(
          icon: icon,
          contentPadding: const EdgeInsets.all(20.0),
          labelText: label,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(),
          ),
        ),
        keyboardType: textInputType,
        onChanged: onChanged,
      ),
    );
  }
}
