import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  List<String> Language=["Hindi", "English", "other"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Complate your Profile',style: TextStyle(color: Colors.white,fontSize: 30)),
          SizedBox(height: 10),
          Text('Fill your Personal information here',style: TextStyle(color: Colors.white),),

          Text("Full Name",style: TextStyle(color: Colors.white)),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Your Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(height: 10),
          Text("Your Email",style: TextStyle(color: Colors.white)),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Your Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          SizedBox(height: 10),
          Text("Referral code(option)",style: TextStyle(color: Colors.white)),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Referral code",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.card_giftcard),
            ),
          ),
          Text("Your Language",style: TextStyle(color: Colors.white)),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Your language",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: Icon(Icons.arrow_downward)
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>OTTScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: HexColor('#FC0000'),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Update", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
