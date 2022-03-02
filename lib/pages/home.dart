import 'package:flutter/material.dart';
import 'package:plant_app/models/catogories_model.dart';
import 'package:plant_app/models/plant_model&data.dart';
import 'package:plant_app/pages/details_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectId = 0;
  int _activePage = 0;

  PageController _pageController = PageController();
  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.6, initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leadingWidth: 40,
        leading: TextButton(
          onPressed: () {},
          child: Image.asset("assets/icons/menu.png"),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(left: 20, right: 10, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.green,
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(.5),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/pro.png'),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 300,
                    margin:
                        const EdgeInsets.only(left: 20, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.green),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(.5),
                          blurRadius: 10,
                          offset: const Offset(0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),

                    // Search field section
                    child: Row(
                      children: [
                        const SizedBox(
                          height: 45,
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '   Search',
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/icons/search.png',
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    margin:
                        const EdgeInsets.only(left: 20, right: 10, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      // border: Border.all(color: Colors.green),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(.5),
                          blurRadius: 10,
                          offset: const Offset(0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/icons/adjust.png',
                      height: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Category selection section
            SizedBox(
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var i = 0; i < categories.length; i++)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectId = categories[i].id;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            categories[i].name,
                            style: TextStyle(
                              color: _selectId == i
                                  ? Colors.green
                                  : Colors.black.withOpacity(.7),
                              fontSize: 16.0,
                            ),
                          ),
                          if (_selectId == i)
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green,
                            )
                        ],
                      ),
                    )
                ],
              ),
            ),

            // Plant Slider card........
            SizedBox(
              height: 320,
              child: PageView.builder(
                itemCount: plants.length,
                controller: _pageController,
                physics: const BouncingScrollPhysics(),
                pageSnapping: true,
                padEnds: false,
                onPageChanged: (value) => setState(() => _activePage = value),
                itemBuilder: (itemBuilder, index) {
                  bool active = index == _activePage;
                  return slider(active, index);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Populer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Image.asset(
                    'assets/icons/more.png',
                    color: Colors.teal,
                    height: 40,
                  )
                ],
              ),
            ),

            // Popular plant Section.....
            SizedBox(
              height: 180,
              child: ListView.builder(
                  itemCount: populerPlants.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (itemBuilder, index) {
                    return Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        // border: Border.all(1.0)
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.05),
                              blurRadius: 10,
                              offset: const Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                populerPlants[index].imagePath,
                                height: 100,
                                width: 100,
                              ),
                              const SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    populerPlants[index].name,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Tk. ${populerPlants[index].price.toStringAsFixed(0)}'),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            right: 20.0,
                            bottom: 20.0,
                            child: GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 15,
                                child: Image.asset(
                                  'assets/icons/add.png',
                                  height: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  // Slider animation.....

  AnimatedContainer slider(active, index) {
    double margin = active ? 20 : 30;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      child: mainPlantCard(index),
    );
  }

  // animation plant card design....

  Widget mainPlantCard(index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(plant: plants[index]),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: Colors.green, width: 2),
        ),

        // stack lement thats showing over main card
        child: Stack(
          children: [
            Container(
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
                image: DecorationImage(
                  image: AssetImage(plants[index].imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 15,
                child: Image.asset(
                  'assets/icons/add.png',
                  color: Colors.white,
                  height: 15,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  '${plants[index].name} - Tk. ${plants[index].price.toStringAsFixed(0)}',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
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
