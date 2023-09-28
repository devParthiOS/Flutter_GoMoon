import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropDownButton extends StatelessWidget {
  late List<String> value;
  late double width;

  CustomDropDownButton({required this.value, required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 53, 53, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        underline: Container(),
        value: value.first,
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1),
        style: const TextStyle(color: Colors.white),
        items: value
            .map(
              (e) {
                return DropdownMenuItem(
                value: e,
                child: Text(e),
              );}
            )
            .toList(),
        onChanged: (_) {  },
      ),
    );
  }
}
