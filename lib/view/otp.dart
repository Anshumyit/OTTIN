import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'complete_profile.dart';

class OTTScreen extends StatefulWidget {
  const OTTScreen({super.key});

  @override
  State<OTTScreen> createState() => _OTTScreenState();
}

class _OTTScreenState extends State<OTTScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Text("Otp Verification",style: TextStyle(color: Colors.white),),
          SizedBox(height: 10),
          Text("This Verification is essential for 2-Step Verification and making your account secure in any case of loss",style: TextStyle(color: Colors.white)),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context,index){
                return Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text("1"),
                );
            }),
          ),
          SizedBox(height: 5),
          Text("Resend OTP",style: TextStyle(color: Colors.white)),
        SizedBox(height: 5),
        Text("The OTP has been sent to your personal number ending with XXXX please Do not share it with others.",style: TextStyle(color: Colors.white)),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CompleteProfile()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: HexColor('#FC0000'),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Text("Complate", style: TextStyle(color: Colors.white)),
                      Icon(Icons.check)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
