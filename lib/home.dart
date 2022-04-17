import 'package:challenge/widgets/custome_textField.dart';
import 'package:flutter/material.dart';

class Screen_Home extends StatefulWidget {
  @override
  State<Screen_Home> createState() => _Screen_HomeState();
}

class _Screen_HomeState extends State<Screen_Home> {
  bool _isChecked = false;
  TextEditingController controllerField1 = TextEditingController();
  TextEditingController controllerField2 = TextEditingController();
  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        _isChecked = checkBoxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Container(
          child: Column(
        children: [
          CustomeTextField('Name',controllerField1, Icons.email),
          CustomeTextField('Password',controllerField2, Icons.lock, true),
          // The argument type 'void Function(bool)' can't be assigned to the parameter type 'void Function(bool?)?'
          Checkbox(
            value: _isChecked,
            onChanged: checkBoxCallBack,
          ),
          ElevatedButton(
              onPressed: () {
                if (_isChecked) {
                  print(controllerField1.text);
                  print(controllerField2.text);
                } else {
                  print('please put check');
                }
              },
              child: const Text('Submit'))
        ],
      )),
    );
  }
}
