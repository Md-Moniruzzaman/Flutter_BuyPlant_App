class Plants {
  final int id;
  final String name;
  final String imagePath;
  final String category;
  final String description;
  final double price;
  final bool isFavorit;

  Plants({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.category,
    required this.description,
    required this.price,
    required this.isFavorit,
  });
}

List<Plants> plants = [
  Plants(
    id: 0,
    name: 'Succuient',
    imagePath: 'assets/images/image1.jpg',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 7500.00,
    isFavorit: false,
  ),
  Plants(
    id: 1,
    name: 'Succuient',
    imagePath: 'assets/images/image2.jpg',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 7500.00,
    isFavorit: false,
  ),
  Plants(
    id: 2,
    name: 'Ficus retusa',
    imagePath: 'assets/images/image3.jpg',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 6035.00,
    isFavorit: false,
  ),
  Plants(
    id: 3,
    name: 'Ficus retusa',
    imagePath: 'assets/images/image5.jpg',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 9000.00,
    isFavorit: false,
  ),
];

List<Plants> populerPlants = [
  Plants(
    id: 0,
    name: 'Succuient',
    imagePath: 'assets/images/01.png',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 6375.00,
    isFavorit: false,
  ),
  Plants(
    id: 1,
    name: 'Succuient',
    imagePath: 'assets/images/02.png',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 7000.00,
    isFavorit: false,
  ),
  Plants(
    id: 2,
    name: 'Ficus retusa',
    imagePath: 'assets/images/03.png',
    category: 'Office',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',
    price: 5850.00,
    isFavorit: false,
  ),
];
