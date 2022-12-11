import 'package:flutter/material.dart';
import 'package:project/employeeprofile.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home screnn';


  @override
  Widget build(BuildContext context) {
    Color c1 = Color(0xff043353);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Color(0xff043353),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add,
          color: Colors.white,
        ),
          backgroundColor: Colors.grey[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(width: 5 , color: Colors.green)
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        color: Color(0xff043353),
        child: Row(
          children: [
            Expanded(child: IconButton(onPressed: (){},
                icon: Icon(Icons.timelapse , color: Colors.white,))),
            // Text("Events"),
            Expanded(
              flex: 1,
                child: IconButton(onPressed: (){},
                icon: Icon(Icons.person ,  color: Colors.white,))),
            
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (_,index) => Column(
          children: [
              Padding(
                padding:  EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 20.0,
                      spreadRadius: 0.0,
                      offset: Offset(
                        5.0,
                        5.0
                      )
                    )
                    ]
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    // borderOnForeground: true,
                    margin: EdgeInsets.all(10),
                    // color : Color(0xffDDDDDD),
                    shadowColor: Colors.grey[800],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10,),

                        const Text("Audi" , style: TextStyle(
                          fontWeight:FontWeight.bold,
                          fontSize: 40,
                          color: Color(0xff043353),
                        ),
                        ),
                        Image.asset("assets/images/audi.jpeg" , width: 200, height: 200,),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 130,
                              child: ElevatedButton(onPressed: (){
                                Navigator.pushNamed(context, employeeprofile.routeName);
                              },
                                child: Text("Edit"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[600],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            SizedBox(
                              width: 130,
                              height: 40,
                              child: ElevatedButton(onPressed: (){}, child:
                              Text("Delete"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    )
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 40,)
                      ],
                    ),
                  ),
                ),
              ),

          ],
        ),


      ),

    );

  }
}

