import 'package:flutter/material.dart';
import 'package:restaurant/screen/home_screen.dart';
import 'package:restaurant/widget/footer_widget.dart';
import 'package:restaurant/widget/form_widget.dart';
import 'package:restaurant/widget/header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var name = TextEditingController();
    var number = TextEditingController();
    var address = TextEditingController();

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                HeaderWidget(),
                FormWidget(
                  formKey: formKey,
                  etName: name,
                  etNumber: number,
                  etAddress: address,
                ),
                FooterWidget(
                    onPressedLogin: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                            (route) => false);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Login Berhasil"),
                        ));
                      }
                    },
                    onPressedRegister: () {})
              ],
            ),
          ),
        ),
      )),
    );
  }
}
