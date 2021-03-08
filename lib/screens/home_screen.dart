import 'package:flutter/material.dart';
import 'package:myknotassesment/data/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('My Notary Pay',style: TextStyle(color: Colors.black87),),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
      padding: EdgeInsets.all(20),
      width: double.maxFinite,
      child: Card(
      elevation: 5,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/wallet.png',height: 50,width: 50,),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Total Earnings',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(':  \$3500',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Pending Payout',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(':  \$400',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ),
          Expanded(
            child: ListView.builder(
              //take data from Data.dart in data package
              itemCount: data.length,
              //building the list view
              itemBuilder: (context, index) {
                return Container(
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
                                Text(data[index].name),
                                SizedBox(height: 10,),
                                Text(data[index].description,textAlign: TextAlign.left,),
                                SizedBox(height: 10,),
                                Text("\$" + data[index].amount.toString(),style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 18
                                ),),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                color: data[index].color,
                              ),
                              child: (data[index].status == "Paid") ?
                                    Text(data[index].status + '\n'  + data[index].orderPlacedAt.substring(0,11),style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
                                    :
                                Text(data[index].status,style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


