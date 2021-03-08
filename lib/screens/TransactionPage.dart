import 'package:flutter/material.dart';
import 'package:myknotassesment/widgets/CompletedFinder.dart';
import 'package:myknotassesment/widgets/InProgressFinder.dart';
class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
          new TabBar(
            tabs: [
              Tab(child: Text('In Progress',style: TextStyle(color: Colors.black87),),),
              Tab(child: Text('Completed',style: TextStyle(color: Colors.black87),),),
            ],
            indicatorColor: Colors.blueAccent,
          )
          ]),
        ),
        body: TabBarView(
          children: [
            InProgressFinder(),
            CompletedFinder(),
          ],
        ),
      ),
    );
  }
}
