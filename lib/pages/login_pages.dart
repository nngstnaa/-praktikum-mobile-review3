import 'package:flutter/material.dart';
import 'package:pertemuan4/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final TextEditingController username = TextEditingController();
  // final TextEditingController password = TextEditingController();
  final TextEditingController nama = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController umur = TextEditingController();
  String? jeniskelamin, hobiString;
  bool hobi1 = false;
  bool hobi2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // SizedBox(height: 20),
            // CustomTextField(controller: username, label: "Username", hint: "Username"),
            // SizedBox(height: 20),
            // CustomTextField(controller: password, label: "Password", hint: "Password"),
            // SizedBox(height: 20),
            SizedBox(height: 20),
            CustomTextField(controller: nama, label: "Nama", hint: "Nama"),
            SizedBox(height: 20),
            CustomTextField(controller: email, label: "Email", hint: "Email"),
            SizedBox(height: 20),
            CustomTextField(controller: umur, label: "Umur", hint: "Umur"),
            SizedBox(height: 20),
            Text("Jenis Kelamin"),
            SizedBox(height: 5),

                ListTile(
                  contentPadding: EdgeInsets.only(left: 45),
                  title: Text("Pria"),
                  leading: Radio(
                    value: "Pria", 
                    groupValue: "Jenis Kelamin", 
                    onChanged: (value){
                    setState(() {
                      jeniskelamin = value;
                    });
                  }),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 45),
                  title: Text("Wanita"),
                  leading: Radio(
                    value: "Wanita", 
                    groupValue: "Jenis Kelamin", 
                    onChanged: (value){
                    setState(() {
                      jeniskelamin = value;
                    });
                  }),
                ),
            SizedBox(height: 20),
            Text("Hobby"),
            ListTile(
                  contentPadding: EdgeInsets.only(left: 45),
                  title: const Text("Belajar"),
                  leading: Checkbox(
                    value: hobi1, 
                    onChanged: (value){
                    setState(() {
                      hobi1 = value ?? false;
                    });
                  }),
                ),
            ListTile(
                  contentPadding: EdgeInsets.only(left: 45),
                  title: const Text("Bermain"),
                  leading: Checkbox(
                    value: hobi2, 
                    onChanged: (value){
                    setState(() {
                      hobi2 = value ?? false;
                    });
                  }),
                ),
            SizedBox(height: 5),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // print("Username : ${username.text}\npassword : ${password.text}");
                    // username.clear();
                    // password.clear();
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, 
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}