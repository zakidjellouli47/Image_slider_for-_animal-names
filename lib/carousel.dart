


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

  int state_page = 0;
final List<String> images = [
'assets/lizard.jpg',
  'assets/parrot.jpg',
  'assets/lion.jpg',
  'assets/fennec_fox.jpg',
  'assets/Platypus.jpg',
  'assets/penguin.jpeg'



];

final List<String> animals = [
  'Lizard',
  'Parrot',
  'Lion',
  'Fennec fox',
   'Platypus',
  'Penguin',


];


List<Widget> Images(){
  return images.map((e) => ClipRRect(
     
    borderRadius: BorderRadius.circular(15.0),
    child: Image.asset(
        e,
      fit: BoxFit.cover,
      height: 1000,
      width: 1000,

    ),
  )
  ).toList();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
   child: Stack(
     children:  [
         
         Center(
           child: CarouselSlider(
               items: Images(),
               options:CarouselOptions(
                 enlargeCenterPage: true,
                 autoPlay: true,
                 aspectRatio: 17/7,
                 onPageChanged: (index,other){
                   setState(() {
                     state_page = index;
                   });

                 }
               )
           ),

         ),
       Column(
         mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.end,
         children:  [


             Center(
               child: Text(
                animals[state_page],
                 style: const TextStyle(
                   decoration: TextDecoration.none,
                   fontSize: 55.0,
                   color: Colors.red,
                   fontWeight: FontWeight.bold,
                 ),

           ),
             )
         ],
       )

     ],
   ),

    );
  }
}
