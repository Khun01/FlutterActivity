import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_view/components/card.dart';
import 'package:list_view/models/country.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Countries> countries = [
    Countries(
      image: 'assets/images/philippines.jpeg', 
      country: 'Philippines', 
      continent: 'Asia', 
      language: 'Filipino'
    ),
    Countries(
      image: 'assets/images/japan.jpeg', 
      country: 'Japan', 
      continent: 'Asia', 
      language: 'Nihongo'
    ),
    Countries(
      image: 'assets/images/southkorea.jpeg', 
      country: 'South Korea', 
      continent: 'Asia', 
      language: 'Korean'
    ),
    Countries(
      image: 'assets/images/northkorea.jpeg', 
      country: 'North Korea', 
      continent: 'Asia', 
      language: 'Korean'
    ),
    Countries(
      image: 'assets/images/america.jpeg', 
      country: 'America', 
      continent: 'North America', 
      language: 'English'
    ),
    Countries(
      image: 'assets/images/russia.jpeg', 
      country: 'Russia', 
      continent: 'Europe', 
      language: 'Russian'
    ),
    Countries(
      image: 'assets/images/china.jpeg', 
      country: 'China', 
      continent: 'Asia', 
      language: 'Mandarin Chinese'
    ),
    Countries(
      image: 'assets/images/brazil.jpeg', 
      country: 'Brazil', 
      continent: 'Portuguese', 
      language: 'South America'
    ),
    Countries(
      image: 'assets/images/spain.jpeg', 
      country: 'Spain', 
      continent: 'Europe', 
      language: 'Spanish'
    ),
    Countries(
      image: 'assets/images/newzealnd.jpeg', 
      country: 'New Zealand', 
      continent: 'Oceania', 
      language: 'English, Māori'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView Example',
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index){
          return CardWidget(
            image: countries[index].image, 
            country: countries[index].country, 
            continent: countries[index].continent, 
            language: countries[index].language,
          );
        },
      ),
    );
  }
}