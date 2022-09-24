import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardView extends StatelessWidget {
  final String cardimage;
  final String cardtext1;
  final String cardtext2;
  final String cardtext3;
  final String cardrating1;
  final ontap;

  const CardView({
    super.key,
    required this.cardimage,
    required this.cardtext1,
    required this.cardtext2,
    required this.cardtext3,
    required this.cardrating1,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: ontap,
        child: Card(
          
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 280,
                width: 360,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(cardimage))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5, top: 210),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Center(child: Text(cardtext3)),
                            width: 50,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cardtext1),
                  Text(cardtext2),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Text(cardrating1),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
