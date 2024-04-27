import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // Wrap the Column with a Container
      color: Colors.white, // Set the background color to white
      child: Column(
        children: [
          Container(height: 50),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              width: 120,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/get_started.jpg',
              fit: BoxFit.cover,
              width: 350,
              height: 250,
            ),
          ),
          SizedBox(height: 15,),

          Text(
            "Recycle your plastic better",
            style: TextStyle(fontSize: 20, color: Colors.black,
              decoration: TextDecoration.none,fontFamily: 'Roboto',),
          ),
          const Text(
            "with Dawir and get more rewards",
            style: TextStyle(fontSize: 20, color: Colors.black,
              decoration: TextDecoration.none,fontFamily: 'Roboto',),
          ),
          SizedBox(height: 12,),

          Text(
            "Scan NFC tags to recycle",
            style: TextStyle(fontSize: 20, color: Colors.grey,
              decoration: TextDecoration.none,fontFamily: 'Roboto',),
          ),
          Text(
            "and earn ",
            style: TextStyle(fontSize: 20, color: Colors.grey,
              decoration: TextDecoration.none,fontFamily: 'Roboto',),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 370,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                  },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF02AD5B),// Set button background color to green
                ),
                child: Text("Get Started",style: TextStyle(fontSize: 20, color: Colors.white,decoration: TextDecoration.none,),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:20 ),
            child: Text("About", style: TextStyle(fontSize: 20, color: Colors.black,
              decoration: TextDecoration.none,)),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
