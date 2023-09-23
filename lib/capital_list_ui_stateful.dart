import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:CapitalList()
  ));
}

class CapitalList extends StatefulWidget{
  @override
  State<CapitalList> createState()=>_CapitalStateList();
}

class _CapitalStateList extends State<CapitalList>{
  var imageList=[
    "assets/images/delhi.jpg",
    "assets/images/finland.jpg",
    "assets/images/london.jpg",
    "assets/images/vancouver.jpg",
    "assets/images/new_york.jpg",
    "assets/images/malaysia.jpg",
    "assets/images/paris.jpg"
  ];

  var cityList=[
    'Delhi',
    'Finland',
    'London',
    'Vancouver',
    'New York',
    'Kuala Lumpur',
    'Paris'
  ];

  var countryList=[
    'India',
    'Europe',
    'UK',
    'Canada',
    'USA',
    'Malaysia',
    'France'
  ];

  var populationList=[
    1393.4,
    751.3,
    59.6,
    40.0,
    330.2,
    34.3,
    11.2
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Center(
        child: Text("Cities Around World",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        children: List.generate(7, (index) => Card(
            color:Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
          child: Container(
            padding: const EdgeInsets.only(left:10),
            child: Row(
                children: [
                  Image(image: AssetImage(imageList[index]),fit: BoxFit.fill,height: 100,width: 200,),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cityList[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Container(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(countryList[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                              Text("Population: ${populationList[index]} mil",style: const TextStyle(fontSize: 13))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
          ),
        ),
      ))
    );
  }
}