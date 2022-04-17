import 'package:flutter/material.dart';

class CustomeTextField extends StatefulWidget {
  String label;
  IconData icon;
  bool password =false;
  TextEditingController controller;

  CustomeTextField(this.label,this.controller, this.icon,[this.password = false]);

  @override
  State<CustomeTextField> createState() => _CustomeTextFieldState();
}

class _CustomeTextFieldState extends State<CustomeTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: TextField(
        obscureText: widget.password,
        controller: widget.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            suffix: Visibility(
              visible: widget.password,
              child: IconButton(
                icon:  const Icon()
                onPressed: () {
                  setState(() {
                    widget.password = !widget.password;
                  });
                },
              ),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            labelText: widget.label,
            fillColor: Colors.blue.withOpacity(.5),
            filled: true),
      ),
    );
  }
}
