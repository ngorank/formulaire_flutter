import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.white], 
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          ),
          DraggableScrollableSheet(
            maxChildSize: .9,
            minChildSize: .5,
            initialChildSize: .6,
            builder: (ctx, controller){
              return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: SingleChildScrollView(
                controller:controller,
                child: Column(
                  children: [],
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}