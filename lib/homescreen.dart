import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        "Mega Deal",
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.all(20), 
                    margin: const EdgeInsets.only(top: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrangeAccent,
                    ),
                    width: MediaQuery.of(context).size.width - 30,
                    height: 100,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.info_outline, color: Colors.white), 
                            SizedBox(width: 8), 
                            Text(
                              "Campaign info",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.east_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 235, 220, 220),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/66.jpeg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 8),  
                                  child: const ListTile(
                                    title: Text(
                                      "Pitzza",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Icon(Icons.favorite_outline_rounded),
                                    subtitle: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("The taste is delicious"),
                                        Text("Try it now"),
                                        Row(
                                          children: [
                                            Icon(Icons.star, color: Color.fromARGB(255, 172, 151, 88) , size: 15),
                                            Icon(Icons.star, color: Color.fromARGB(255, 172, 151, 88) , size: 15),
                                            Icon(Icons.star,  color: Color.fromARGB(255, 172, 151, 88) , size: 15),
                                            Icon(Icons.star,  color: Color.fromARGB(255, 172, 151, 88) , size: 15),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}