class BottomMenu {
  final int id;
  final String imagepath;
  BottomMenu({required this.id, required this.imagepath});
}

List<BottomMenu> bottomMenu = [
  BottomMenu(id: 0, imagepath: 'assets/icons/home.png'),
  BottomMenu(id: 1, imagepath: 'assets/icons/heart.png'),
  BottomMenu(id: 2, imagepath: 'assets/icons/cart.png'),
  BottomMenu(id: 3, imagepath: 'assets/icons/settings.png')
];
