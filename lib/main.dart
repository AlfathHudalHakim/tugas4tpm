import 'package:flutter/material.dart';
import 'package:tugas4tpm/db.dart';
import 'botnav.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Tugas 4',
    theme: ThemeData(
        primarySwatch: Colors.blue
    ),
    home: Login(),
  ));
}

TextEditingController getUsername = new TextEditingController();
TextEditingController getPassword = new TextEditingController();

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 40),
            Center(
              child: Image.asset("assets/image/logo.png",
                  height: 200,
                  width: 200),
            ),
            SizedBox(height: 60),
            TextFormField(
              controller: getUsername,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.account_circle_outlined,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: getPassword,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.assignment,
                ),
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
                onPressed: () {
                  String username = 'qwerty';
                  String password = 'qwerty';
                  if(getUsername.text == username && getPassword.text == password){
                    Route route = MaterialPageRoute(builder: (context) => BotNav());
                    Navigator.pushReplacement(context, route);
                  }
                  else{
                    final snackBar = SnackBar(
                      duration: const Duration(seconds: 5),
                      content: Text("Email atau password salah!"),
                      backgroundColor: Colors.red,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }
                }
                , child: Text("Login"))
          ],
        ),
      ),
    );
  }

}
