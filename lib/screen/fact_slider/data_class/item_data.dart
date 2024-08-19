import 'package:flutter/material.dart';

class ItemData {
  final String title;
  final String subtitle;
  final IconData icon;

  ItemData({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

class ItemList {
  static List<ItemData> items = [
    ItemData(
      title: 'Item 1',
      subtitle: 'This is the subtitle for item 1',
      icon: Icons.laptop,
    ),
    ItemData(
      title: 'Item 2',
      subtitle: 'This is the subtitle for item 2',
      icon: Icons.laptop_chromebook_sharp,
    ),
    ItemData(
      title: 'Item 3',
      subtitle: 'This is the subtitle for item 3',
      icon: Icons.laptop,
    ),
    ItemData(
      title: 'Item 4',
      subtitle: 'This is the subtitle for item 4',
      icon: Icons.laptop,
    ),
    ItemData(
      title: 'Item 5',
      subtitle: 'This is the subtitle for item 5',
      icon: Icons.laptop_chromebook_sharp,
    ),
    ItemData(
      title: 'Item 6',
      subtitle: 'This is the subtitle for item 6',
      icon: Icons.laptop,
    ),
  ];
}
