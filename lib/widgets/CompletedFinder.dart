import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myknotassesment/data/data.dart';
class CompletedFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        if (data[index].status == "Paid") {
          return  Container(
              padding: EdgeInsets.all(5),
              width: double.maxFinite,
              height: 200,
              child: Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage('images/avatar.jpg')
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //extract data using dot operator
                            Text(data[index].name,style: TextStyle(fontWeight: FontWeight.w600),),
                            SizedBox(height: 10,),
                            Text(data[index].description,textAlign: TextAlign.left,),
                            SizedBox(height: 10,),
                            Text("order Placed At : " + data[index].orderPlacedAt),
                            SizedBox(height: 10,),
                            Text("Delivered At : " + data[index].orderDeliveredAt),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
          );}
        else
          return Container();
      },
    );
  }
}
