import 'package:flutter/material.dart';
import 'package:icodegram_app/pages/login.dart';
import 'package:icodegram_app/resources/auth_methods.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _validatePasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              SizedBox(
                height: 64,
              ),
              TextInputField(
                hintText: 'Хэрэглэгчийн имэйл',
                isPassword: false,
                editingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'Хэрэглэгчийн нэр',
                isPassword: false,
                editingController: _usernameController,
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 24),
              TextInputField(
                hintText: 'Нууц үг',
                isPassword: true,
                editingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'Нууц үг давтах',
                isPassword: true,
                editingController: _validatePasswordController,
                textInputType: TextInputType.text,
              ),
              SizedBox(height: 24),
              SizedBox(height: 64),
              InkWell(
                onTap: () {
                  AuthMethods().signUpUser(
                      email: _emailController.text,
                      password: _passwordController.text,
                      username: _usernameController.text);
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      color: Colors.deepPurpleAccent),
                  child: Text('Бүртгүүлэх'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Бүртгэлтэй юу?  ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Нэвтрэх",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.orange),
                    ),
                  ),
                  // Flexible(
                  //   child: Container(),
                  //   flex: 2,
                  // ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Flexible(flex: 2, child: Container())
            ],
          ),
        ),
      ),
    );
  }
}

class TextInputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController editingController;
  final TextInputType textInputType;
  const TextInputField(
      {super.key,
      required this.hintText,
      required this.isPassword,
      required this.editingController,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: editingController,
      decoration: InputDecoration(
          hintText: this.hintText,
          border:
              OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
          focusedBorder:
              OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
          enabledBorder:
              OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
          filled: true,
          contentPadding: EdgeInsets.all(8)),
      obscureText: this.isPassword,
      keyboardType: textInputType,
    );
  }
}
