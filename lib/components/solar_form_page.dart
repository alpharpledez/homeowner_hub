import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeowner_hub/components/energy/promotion_card.dart';
import 'package:homeowner_hub/main.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

const solarGradient = LinearGradient(
    colors: [Color(0xFFf9d423), Color(0xFFff4e50)],
    stops: [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight);

class SolarFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        elevation: 0,
        gradient: solarGradient,
        title: Row(children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.close)),
          const Text("Get a quote for affordable Solar Panels",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18))
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SolarPromotionCard(
              isBanner: true,
            ),
            Container(
                padding: const EdgeInsets.all(0),
                child: ClipRRect(
                  child: Image.asset("assets/panel.png"),
                )),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              // The current energy crisis have led to increase in prices for gas, electrcity, transportation and food. Electricity prices in Germany have  increased by 26 percent.

              child: const Text(
                '''
              
Did you know that having solar panels could reduce your monthly energy bills by 40-70%? 
      
We will provide our costumer with a loan to have solar panels in their houses and save money.
Are you interested in more details? Please fill the form below and we will contact you!''',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Postal code",
                  labelText: "Postal Code",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              height: Get.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.only(
                left: 0,
                right: 0,
                top: 0,
                bottom: 4,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 1.0, left: 8, right: 8),
                child: Container(
                  // height: 50,
                  // width: 210,
                  decoration: BoxDecoration(
                      gradient: solarGradient,
                      borderRadius: BorderRadius.circular(20)),
                  child: OutlinedButton(
                    style: ButtonStyle(
                        side: MaterialStateBorderSide.resolveWith(
                            (states) => BorderSide.none),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}