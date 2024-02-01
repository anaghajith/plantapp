import 'package:flutter/material.dart';
import 'package:plantapp/secondscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white54,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Let Your Home\nbe Colourful\nas Your Life",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 1,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Image.asset(
              "assets/home.png",
              fit: BoxFit.cover,
              scale: 1.2,
              height: 350,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Delivery Within 10 Working Days",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ),);
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: Text(
                  "Go",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
