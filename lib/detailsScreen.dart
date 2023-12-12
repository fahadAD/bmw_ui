import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.grey,
appBar: AppBar(
  elevation: 0,
  leading: Icon(Icons.arrow_back_ios),
backgroundColor: Colors.grey,
  actions: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(

        backgroundImage: NetworkImage("data:image/jpeg;base64,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"),),
    )
  ],
),
      body: SingleChildScrollView(
        child: Column(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
              child: Image.network("https://hips.hearstapps.com/hmg-prod/images/bmw-vision-m-next-2-1561402880.jpg?crop=0.869xw:0.731xh;0.0657xw,0.216xh&resize=1200:*",
                height: 300,
                width: MediaQuery.of(context).size.width,

              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text("BMW 120d xDrive",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 27),),
                  ),

                  SizedBox(
                    height: 340,
                     child: GridView(
                      primary: false,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,

                      ),
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:  Colors.teal
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Engine",style: TextStyle(color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.car_repair_rounded),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("188 hp",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:  Colors.teal
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Driving Type",style: TextStyle(color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.bluetooth_drive_outlined),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("4WD",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:  Colors.teal
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Transmission",style: TextStyle(color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.real_estate_agent_outlined),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Automatic",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:  Colors.teal
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Fuel",style: TextStyle(color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.battery_full),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Disel",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:  Colors.teal
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Engine",style: TextStyle(color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.car_repair_rounded),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("188 hp",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:  Colors.teal
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("0-100 km/hr",style: TextStyle(color: Colors.black),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.timer),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("7 second",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Book",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20))),
                    ),
                  )
                ],
              ),
            ),



          ],


        ),
      ),
    );
  }
}
