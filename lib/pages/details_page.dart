import 'package:flutter/material.dart';
import 'package:plant_app/models/plant_model&data.dart';

class DetailsPage extends StatelessWidget {
  final Plants plant;

  DetailsPage({required this.plant});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              color: Colors.green,
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: height / 2,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  image: DecorationImage(
                      image: AssetImage(plant.imagePath), fit: BoxFit.cover),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
