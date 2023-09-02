import 'package:bookmyturf/view/widgets/bgWidget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            height: MediaQuery.of(context).size.height * 0.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "sign in",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
                CustomTextField(hint: "email", icon: Icons.email),
                CustomTextField(
                    hint: "password", icon: Icons.password, isHide: true),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                      color: Color(0xffc3e075),
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "sign in",
                    style: TextStyle(color: Color(0xff101977), fontSize: 18),
                  )),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  Container CustomTextField({hint, icon, isHide}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        obscureText: isHide ?? false,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.grey.shade500,
            ),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey.shade500)),
      ),
    );
  }
}
