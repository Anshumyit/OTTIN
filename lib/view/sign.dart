import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'otp.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("images/Container.png"),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back!", style: TextStyle(color: Colors.white)),
                Text(
                  'Please enter you phone number log  in to you Deepak account',
                  style: TextStyle(color: Colors.white),
                ),

                Text('Phone Number', style: TextStyle(color: Colors.white)),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Spacer(),
              Text("OR", style: TextStyle(color: Colors.white)),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(5),
                    ),
                    elevation: 5,
                    color: HexColor("#1E1E1E"),
                    child: Row(
                      children: [
                        Icon(Icons.add_a_photo),
                        Text("Google",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(5),
                    ),
                    elevation: 5,
                    color: HexColor("#1E1E1E"),
                    child: Row(
                      children: [
                        Icon(Icons.add_a_photo),
                        Text("Google",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OTTScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: HexColor('#FC0000'),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
