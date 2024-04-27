import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> finalChallenges = [
      "Sell 5 items in a week ✅ Bonus +10%",
      "Sell 8 items in two weeks  ✅ Bonus +40%",
      "Sell 15 items in a month  ❌ Bonus +80%",

      // Add more challenges as needed
    ];
    return Scaffold(
      backgroundColor: Colors.white, // Set the body background color
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(

                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        fit: BoxFit.cover,
                        width: 52,
                        height: 52,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(children: [
                    Text(
                      "Bouzid Imed",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 2,),
                    Text('ID: DZ-123456',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                      ),
                    ),
                      ],),

                  ],
                ), Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                        'assets/images/logout.png',
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Center(
              child: Container(
                width: 364, // Set the width to your desired value
                child: Card(
                  elevation: 4, // Sets the elevation (shadow) of the card
                  shape: RoundedRectangleBorder( // Defines the shape of the card's border
                    borderRadius: BorderRadius.circular(8.0), // Sets border radius
                    side: BorderSide(color: Colors.grey, width: 0.25), // Sets border color and width
                  ),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(8.0), // Adds padding inside the card
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Score: 559💰", // Coins information
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, // Sets bold font weight
                                  fontSize: 16, // Sets font size
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0), // Adds spacing between the currency information and the conversion
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "100000💰", // Currency amount
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, // Sets bold font weight
                                  fontSize: 16, // Sets font size
                                ),
                              ),
                              SizedBox(width: 8.0), // Adds spacing between the currency amount and arrow
                              Icon(Icons.arrow_forward, color: Colors.grey), // Arrow icon
                              SizedBox(width: 8.0), // Adds spacing between the arrow and currency conversion
                              Text(
                                "10DZD", // Currency conversion
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, // Sets bold font weight
                                  fontSize: 16, // Sets font size
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(1),
                            child: Text("Last week  : 2 sales",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // Sets bold font weight
                                fontSize: 14, // Sets font size
                              ),),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.all(1),
                            child: Text("Last month : 7 sales",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, // Sets bold font weight
                                fontSize: 14, // Sets font size
                              ),),
                          ),
                          SizedBox(height: 15,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ),



          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: 360,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ), // Rounded top corners
                      ),
                      builder: (BuildContext bc) {
                        return SingleChildScrollView(
                          child: Container(
                            height: 260, // Adjust the height as needed
                            padding: const EdgeInsets.all(15.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Challenges",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Color(0xFF02AD5B),
                                          ),
                                        ),
                                       GestureDetector(

                                           onTap: (){
                                             Navigator.pop(context);
                                           },
                                           child: Icon(Icons.expand_more , size:30 ,color: Colors.black,
                                       ))
                                      ],
                                    ),

                                  // List of challenges with checkboxes

                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Container(
                                      width: 370,
                                      height: 310,
                                      child: ListView.builder(
                                        itemCount: finalChallenges.length,
                                        itemBuilder: (BuildContext context, int index) {
                                          return ListTile(
                                            title: Text(finalChallenges[index]),
                                          );
                                        },
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF02AD5B), // Set button background color to green
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Set the radius for the button
                    ),
                  ),
                  child: Text(
                    "Challenges",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height:10,),
          Center(
            child: GestureDetector(
              onTap: () {
                //
              },
              child: Container(
                width: 320,

                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder( // Defines the shape of the card's border
                    borderRadius: BorderRadius.circular(8.0), // Sets border radius
                    side: BorderSide(color: Colors.grey, width: 1), //

                  ),
                  child: Center(
                    child: Container(
                      child: Image.asset(
                        'assets/images/NFC.png',
                        fit: BoxFit.cover,
                        height: 370,
                      ),
                    ),
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


