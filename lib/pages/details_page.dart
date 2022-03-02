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
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: plant.name,
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: ' (${plant.category} Plant)',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.05),
                                  blurRadius: 15,
                                  offset: const Offset(5, 5),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Image.asset('assets/icons/heart.png'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      RichText(
                        text: TextSpan(
                            text: plant.description,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            )),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Treatment',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black.withOpacity(1),
                          fontSize: 18,
                          textBaseline: TextBaseline.ideographic,
                          inherit: true,
                          height: 1.4,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.8,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/icons/sun.png',
                              color: Colors.black, height: 24.0),
                          Image.asset('assets/icons/drop.png',
                              color: Colors.black, height: 24.0),
                          Image.asset('assets/icons/temperature.png',
                              color: Colors.black, height: 24.0),
                          Image.asset('assets/icons/up_arrow.png',
                              color: Colors.black, height: 24.0),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

            // appbar cart section...
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     IconButton(
            //       onPressed: () {},
            //       icon: Icon(Icons.arrow_back),
            //     ),
            //     Image.asset(
            //       'assets/icons/cart.png',
            //       color: Colors.black,
            //       height: 40.0,
            //     )
            //   ],
            // ),

            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 15.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(.05),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Buy TK. ${plant.price}',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        height: 1.4,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold),
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
