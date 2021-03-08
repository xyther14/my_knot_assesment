import 'package:myknotassesment/data/data.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.deepPurple,
        title: Text('Toolbar with Icon'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/2,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple,width: 2),
              ),
              child: TableCalendar(
                  calendarController: _controller),
            ),
          ),
          Expanded(
            flex: 3,
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
                      child: Column(
                        children: [
                          Row(
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
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    //extract data using dot operator
                                    Text(data[index].name),
                                    SizedBox(height: 10,),
                                    Text(data[index].description,textAlign: TextAlign.left,),
                                    SizedBox(height: 10,),
                                    (data[index].status == "Arrived To Appointment") ?
                                    Text(data[index].arrivedToAppointment,textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.w800),) :
                                    Center(),
                                    Divider(height: 2,thickness: 1,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Status:'),
                              SizedBox(width: 10,),
                              FlatButton(
                                color: data[index].color,
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Text(data[index].status,style: TextStyle(color: Colors.white),),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: RaisedButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  child: Text('Change Status'),
                                ),
                              ),
                            ],
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
