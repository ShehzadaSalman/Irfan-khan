import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage('assets/images/irfan2.jpeg'),
                         fit: BoxFit.cover,
                       )
                     ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                                   Colors.black,
                                   Colors.black.withOpacity(0.3),
                        ]
                        )
                      ),
                     child: Padding(
                       padding: EdgeInsets.all(20),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: <Widget>[
                           Text('Irfan Khan',
                           style: TextStyle(
                             fontSize: 40,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                           ),
                           ),
                           SizedBox(height: 20,),
                           Row(
                             children: <Widget>[
                               Text(
                                 '151 Films',
                                 style: TextStyle(
                                   color: Colors.grey,
                                   fontSize: 17,
                                 ),
                               ),
                               SizedBox(width: 50,),
                               Text('32 Awards',
                               style: TextStyle(
                                 color: Colors.grey,
                                 fontSize: 17,
                               ),
                               )
                             ],
                           )
                         ],
                       )
                     ),
                    ),
                  ),
                ),
              ),

              SliverList(delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("I tell life: ‘Lag Jaa Gale Ki Phir Yeh Haseen Shaam Ho Naa Ho, Shayad Is Janam Mein Mulaqaat Ho Na Ho’ [Embrace and hug me life, for your never know if we will ever have this magical evening like this or not, Perhaps we may meet or never meet again in my lifetime].",
                      style: TextStyle(
                        color: Colors.grey,
                        height: 1.4,
                      ),
                      ),
                      SizedBox(height: 40,),
                      Text('Born ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(height: 10),
                      Text('January 7, 1967 in Jaipur, Rajasthan, India',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Nationality ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Indian',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Videos ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeVideo(image: 'assets/images/irfan3.jpg'),
                            makeVideo(image: 'assets/images/irfan2.jpeg'),
                            makeVideo(image: 'assets/images/irfan1.jpg'),

                          ],
                        )
                      ),
                      SizedBox(height: 120),


                    ],
                  ),
                )
              ]
              ),
              )
            ],
          ),
          Positioned.fill(
              bottom: 30,
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text('Follow', style: TextStyle(color: Colors.white,
                      fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )
                  )
                )
              )
          ),
        ],
      ),
    );
  }

Widget makeVideo({image}){
    return AspectRatio(
      aspectRatio: 1.5/1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
               begin: Alignment.bottomRight,
               colors: [
                 Colors.black.withOpacity(0.9),
                 Colors.black.withOpacity(0.3)
               ]
              )
            ),
            child: Align(
              child: Icon(Icons.play_arrow, color: Colors.white, size: 70)
            )
          ),
        )
      )
    );

}

}


