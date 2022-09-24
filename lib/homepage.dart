import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotelui/cardview.dart';
import 'package:hotelui/hotel.dart';
import 'package:hotelui/hotelicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 38, 121, 189),
            height: 200,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Type your Location",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Bouddha,Kathmandu",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //hotel container
              Hotel_container(
                  icon: Icons.hotel,
                  iconname: 'Hotel',
                  color: Color.fromARGB(218, 239, 6, 84)),
              Hotel_container(
                  icon: Icons.restaurant,
                  iconname: 'Restaurent',
                  color: Colors.lightBlue),
              Hotel_container(
                  icon: Icons.coffee, iconname: 'Cafe', color: Colors.orange),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              CardView(
                ontap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Hoteldetails())),
                cardimage: "assets/kakkand.jpg",
                cardtext1: "Hotel near kakkand",
                cardtext2: "Kakkanad",
                cardtext3: "\$35",
                cardrating1: ("300 reviews"),
              ),
              CardView(
                ontap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Hoteldetails())),
                cardimage: "assets/pexels-photo.jpeg",
                cardtext1: "Hotel near Aluva",
                cardtext2: "Aluva",
                cardtext3: "\$40",
                cardrating1: ("207 reviews"),
              ),
              CardView(
                ontap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Hoteldetails())),
                cardimage: "assets/diamondhotel.jpg",
                cardtext1: "Hotel near Edappally",
                cardtext2: "Edappally",
                cardtext3: "\$43",
                cardrating1: ("290 reviews"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
