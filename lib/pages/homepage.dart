import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 248, 197),
      appBar: AppBar(
        title: const Text('My Home',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,)
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 173, 235, 176),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ) ,
        
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Container(
                width: double.infinity,
                decoration:const BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                color: Color.fromARGB(255, 173, 235, 176),
                ),
                padding: const EdgeInsets.all( 20),
                 child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                   const Text('Find Your',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,),
                      ),
                   const SizedBox(height:5,),
                   const Text('Dream Home',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,),),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const  EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      const Text('Popular',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget> [
                            homeCard('assets/images/one.jpg'),
                            homeCard('assets/images/two.jpg'),
                            homeCard('assets/images/three.jpg'),
                            homeCard('assets/images/five.jpg'),
                          ]
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text('Recent',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget> [
                            homeCard('assets/images/four.jpg'),
                            homeCard('assets/images/five.jpg'),]
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text('Featured',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget> [
                            homeCard('assets/images/one.jpg'),
                            homeCard('assets/images/three.jpg'),]
                        ),
                      ),
                    ],
                  )
                ),
              ]
            ),
          ),
      ),       
    );
  }
}

Widget homeCard(image){
  return AspectRatio(
    aspectRatio: 2.62/3,
    child: Container(
     margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        image:  DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
       ),
    ),
     child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black87.withOpacity(.5),
            Colors.black.withOpacity(.1),
          ],
        )
      ), 
     )
    ),
  );
}
    
