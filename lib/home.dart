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
  String email = '';
  String password = '';

  final GlobalKey _formKey = GlobalKey<FormState>();
  setEmail(String email) {
    this.email = email;
  }

  setPassword(String password) {
    this.password = password;
  }

  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        _isChecked = checkBoxState;
      });
    }
  }

  saveForm() {
    //هاي بمجرد تنفيذها حتتنفذ جميع الدوال ال onSave  و حتنحفظ القيم
    // _formKey.currentState.save();
    //اووه مش عارفة ليش مش راضية تزبط :|
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Container(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomeTextField(
                    'Name', controllerField1, Icons.email, setEmail),
                CustomeTextField('Password', controllerField2, Icons.lock,
                    setPassword, true),
                Checkbox(
                  value: _isChecked,
                  onChanged: checkBoxCallBack,
                ),
                ElevatedButton(
                  child: const Text('Save'),
                  onPressed: () {
                    saveForm();
                    print(email);
                    print(password);
                  },
                )
              ],
            )),
      ),
    );
  }
}
