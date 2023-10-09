import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/models.dart';

const User currentUser = User(
  string,
  '',
  name: 'Teddy yy',
  imageUrl:
      'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
);

const List<AddUser> userAdd = [
  AddUser(
    time: "18.30",
    label: null,
    name: 'Amy Smith',
    cek: true,
    imageUrl: [
      'https://images.unsplash.com/photo-1546961329-78bef0414d7c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
    ],
  ),
  AddUser(
    time: "12.00",
    label: "10 Teman Yang sama",
    name: 'David Brooks',
    imageUrl: [
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'
    ],
  ),
  AddUser(
    time: "12.00",
    label: "10 Teman Yang sama",
    name: 'Ed Morris',
    imageUrl: [
      'https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'
    ],
  ),
  AddUser(
    time: "12.00",
    label: "10 Teman Yang sama",
    name: 'Paul Pinnock',
    imageUrl: [
      'https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'
    ],
  ),
  AddUser(
    time: "12.00",
    label: "10 Teman Yang sama",
    name: 'Carolyn Duncan',
    imageUrl: [
      'https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'
    ],
  ),
  AddUser(
    time: "12.00",
    label: "10 Teman Yang sama",
    name: 'Elizabeth Wong',
    imageUrl: [
      'https://images.unsplash.com/photo-1551836022-deb4988cc6c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
      'https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'
    ],
  ),
];

const String string =
    "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores recusandae pariatur harum sint ";
const List<User> onlineUsers = [
  User(string, '4 jam yang lalu',
      name: 'David Brooks',
      imageUrl:
          'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'),
  User(string, '6 jam yang lalu',
      name: 'Jane Doe',
      imageUrl:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'),
  User(string, 'kemarin pukul 2.00',
      name: 'Matthew Hinkle',
      imageUrl:
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'),
  User(string, 'kemarin pukul 14.56',
      name: 'Amy Smith',
      imageUrl:
          'https://images.unsplash.com/photo-1546961329-78bef0414d7c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'),
  User(string, 'kemarin pukul 17.36',
      name: 'Ed Morris',
      imageUrl:
          'https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60'),
  User(string, 'kemarin pukul 17.36',
      name: 'Carolyn Duncan',
      imageUrl:
          'https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60'),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'Paul Pinnock',
    imageUrl:
        'https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'Elizabeth Wong',
    imageUrl:
        'https://images.unsplash.com/photo-1605993439219-9d09d2020fa5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'James Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'Jessie Samson',
    imageUrl:
        'https://images.unsplash.com/photo-1551836022-deb4988cc6c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fHVzZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'David Brooks',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'Jane Doe',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'Matthew Hinkle',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'Amy Smith',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'Ed Morris',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'Carolyn Duncan',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'Paul Pinnock',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(string, 'kemarin pukul 17.36',
      name: 'Elizabeth Wong',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'James Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    string,
    'kemarin pukul 17.36',
    name: 'Jessie Samson',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

final List<Story> stories = [
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewe: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    isViewe: true,
  ),
  Story(
      user: onlineUsers[7],
      imageUrl:
          'https://images.unsplash.com/photo-1695562672714-08e99cef2dc2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
  Story(
    user: onlineUsers[2],
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
  ),
  Story(
    user: onlineUsers[6],
    imageUrl:
        'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    isViewe: true,
  ),
  Story(
    user: onlineUsers[3],
    imageUrl:
        'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
  ),
  Story(
    user: onlineUsers[9],
    imageUrl:
        'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    isViewe: true,
  ),
  Story(
      user: onlineUsers[7],
      imageUrl:
          'https://images.unsplash.com/photo-1695418624968-d027093abdb9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=600&q=60'),
];

final List<Post> posts = [
  Post(
    user: currentUser,
    caption: 'Check out these cool puppers',
    timeAgo: '58m',
    imageUrl: 'https://images.unsplash.com/photo-1525253086316-d0c936c814f8',
    likes: 1202,
    comments: 184,
    shares: 96,
  ),
  Post(
    user: onlineUsers[5],
    caption:
        'Please enjoy this placeholder text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '3hr',
    imageUrl: null,
    likes: 683,
    comments: 79,
    shares: 18,
  ),
  Post(
    user: onlineUsers[4],
    caption: 'This is a very good boi.',
    timeAgo: '8hr',
    imageUrl:
        'https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 894,
    comments: 201,
    shares: 27,
  ),
  Post(
    user: onlineUsers[3],
    caption: 'Adventure 🏔',
    timeAgo: '15hr',
    imageUrl:
        'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    likes: 722,
    comments: 183,
    shares: 42,
  ),
  Post(
    user: onlineUsers[0],
    caption:
        'More placeholder text for the soul: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    timeAgo: '1d',
    imageUrl: null,
    likes: 482,
    comments: 37,
    shares: 9,
  ),
  Post(
    user: onlineUsers[9],
    caption: 'A classic.',
    timeAgo: '1d',
    imageUrl:
        'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 1523,
    shares: 129,
    comments: 301,
  ),
];

final List<Product> product = [
  Product(
    imgUrl:
        'https://arenagadget.id/assets/uploads/files/7bdee-hp-1-jutaan-terbaik.jpg',
    name: 'Hp Vivo',
    price: '1.200.000',
  ),
  Product(
    imgUrl:
        'https://shopee.co.id/inspirasi-shopee/wp-content/uploads/2021/10/7-Laptop-ASUS-Terbaik-2021-Terjangkau-hingga-Termahal.webp',
    name: 'Laptop',
    price: '4.200.000',
  ),
  Product(
    imgUrl:
        'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//95/MTA-10363089/no_brand_eshal_blouse-baju_wanita-baju_kekinian_full01_rjp5x8av.jpg',
    name: 'Baju Peremouan',
    price: '100.000',
  ),
  Product(
    imgUrl:
        'https://media.karousell.com/media/photos/products/2020/01/17/sepatu_sekolah_size_3943_1579266762_7f824028_progressive.jpg',
    name: 'Sepatu ',
    price: '300.000',
  ),
  Product(
    imgUrl:
        'https://arenagadget.id/assets/uploads/files/7bdee-hp-1-jutaan-terbaik.jpg',
    name: 'Hp Vivo',
    price: '1.200.000',
  ),
  Product(
    imgUrl:
        'https://shopee.co.id/inspirasi-shopee/wp-content/uploads/2021/10/7-Laptop-ASUS-Terbaik-2021-Terjangkau-hingga-Termahal.webp',
    name: 'Laptop',
    price: '4.200.000',
  ),
  Product(
    imgUrl:
        'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//95/MTA-10363089/no_brand_eshal_blouse-baju_wanita-baju_kekinian_full01_rjp5x8av.jpg',
    name: 'Baju Peremouan',
    price: '100.000',
  ),
  Product(
    imgUrl:
        'https://media.karousell.com/media/photos/products/2020/01/17/sepatu_sekolah_size_3943_1579266762_7f824028_progressive.jpg',
    name: 'Sepatu ',
    price: '300.000',
  ),
];

final List buttonBox = [
  {
    "image": "assets/icons/groups.png",
    "name": "Group",
  },
  {
    "image": "assets/icons/clock.png",
    "name": "Kenangan",
  },
  {
    "image": "assets/icons/bookmark.png",
    "name": "Tersimpan",
  },
  {
    "image": "assets/icons/facebook.png",
    "name": "Video",
  },
  {
    "image": "assets/icons/market.png",
    "name": "Marketplase",
  },
  {
    "image": "assets/icons/team.png",
    "name": "Teman",
  },
  {
    "image": "assets/icons/card.png",
    "name": "Kabar",
  },
  {
    "image": "assets/icons/calendar.png",
    "name": "Acara",
  },
];

final List<Map<dynamic, dynamic>> itemsMenu1 = [
  {
    'icon': Icons.poll,
    'text': "Pusat Bnatuan",
  },
  {
    'icon': Icons.circle,
    'text': "Kotak Masuk Dukungan",
  },
  {
    'icon': Icons.warning,
    'text': "Keamanan",
  },
  {
    'icon': FontAwesomeIcons.userShield,
    'text': "Ketemtuan & Kebijakan",
  },
  {
    'icon': FontAwesomeIcons.book,
    'text': "Ketemtuan & Kebijakan",
  },
];
final List<Map<dynamic, dynamic>> itemsMenu2 = [
  {
    'icon': FontAwesomeIcons.circleUser,
    'text': "pengaturan",
  },
  {
    'icon': FontAwesomeIcons.key,
    'text': "Permintaan Perangkat",
  },
  {
    'icon': FontAwesomeIcons.photoFilm,
    'text': "Aktivitas Iklan Terkini",
  },
];
