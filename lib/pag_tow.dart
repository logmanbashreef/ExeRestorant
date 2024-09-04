import 'package:flutter/material.dart';

class PagTow extends StatelessWidget {
  const PagTow({super.key});

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
                      // child: Image.asset(
                      //   'assets/images/pizza.jpg',
                      //   fit: BoxFit.fill,
                      // ),
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/images/11.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.only(top: 6),
                            child: const ListTile(
                              title: Text(
                                "MC Donlds",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: Icon(Icons.favorite_outline_rounded),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("  neeew "),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Current Offers",
                              textAlign: TextAlign.start),
                          const Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "4.9 ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                " 200 + extra prece",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Row(
                            children: [
                              Icon(Icons.location_on_outlined,
                                  color: Colors.amber),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Location",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              width: 600,
                              height: 60,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color:
                                      const Color.fromARGB(255, 201, 187, 144)),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Oficer",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                  Text("shawarma",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                  Text("Pitzza",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                  Text("Falafel",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                ],
                              )),
                              

                        ],
                      ),
                    ),
                    Expanded(
                      child:  ListView.builder(
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
                                flex: 4,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 8),  
                                  child: const ListTile(
                                    title: Text(
                                      "Pitzza",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    trailing: Column(
                                      children: [
                                        Icon(Icons.favorite_outline_rounded ,size: 20),
                                        SizedBox(height: 10),
                                        Icon(Icons.add  ,size: 20,),
                                       
                                      ],
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("The taste is delicious" , style: TextStyle(fontSize: 10 ),),
                                        Text("Try it now" , style: TextStyle(fontSize: 10 ),),
                                          SizedBox(width: 10,),
                                        Row(
                                          children: [
                                         Text("5.55" , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold),) ,
                                         SizedBox(width: 10,),
                                          Text("4.55" , style: TextStyle(fontSize: 10 ),) ,
                                        
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
