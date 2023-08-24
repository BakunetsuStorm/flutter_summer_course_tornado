import 'package:flutter/material.dart';
import 'package:icodegram_app/resources/auth_methods.dart';

import '../home_screen.dart';
import '../text_input_field.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;
  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String result = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);

    if (result == 'success') {
      setState(() {
        _isLoading = false;
      });
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
      print('Logged in');
    } else {
      print("Not logged in");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Flexible(flex: 2, child: Container()),
              Text('Twicetagram'),
              SizedBox(height: 64),
              TextInputField(
                hintText: 'Имэйл эсвэл хэрэглэгчийн нэр',
                isPassword: false,
                editingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 24),
              TextInputField(
                  hintText: 'Нууц үг',
                  isPassword: true,
                  editingController: _passwordController,
                  textInputType: TextInputType.text),
              SizedBox(height: 64),
              InkWell(
                onTap: loginUser,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    color: Colors.deepPurpleAccent,
                  ),
                  child: _isLoading
                      ? Center(
                          child: CircularProgressIndicator(color: Colors.white))
                      : Text('Нэвтрэх'),
                ),
              ),
              SizedBox(height: 12),

              Text("Эсвэл",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(height: 12),
              // Flexible(child: Container(), flex: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Шинэ хэрэглэгч үү?  ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                    },
                    child: Text(
                      "Бүртгүүлэх",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.orange),
                    ),
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
