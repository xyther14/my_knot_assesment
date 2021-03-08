import 'package:flutter/material.dart';
class Data {
 final String name;
 final String description;
 final double amount;
 final String status;
 final String orderPlacedAt;
 final String orderDeliveredAt;
 final String arrivedToAppointment;
 final Color color;

  Data({this.name, this.description, this.amount, this.status, this.orderPlacedAt, this.orderDeliveredAt,this.color,this.arrivedToAppointment});
}

List data = [
  Data(name:'Refiance of Marin Lawrence',description:'A Short description of order with some short text',amount: 125,status: 'Paid',orderPlacedAt: 'Jan 11 2021, 3:45 PM', orderDeliveredAt: 'Jan 12 2021, 10:30 AM',color: Colors.blueAccent),
 Data(name:'Refiance of Marin Lawrence',description:'A Short description of order with some short text',amount: 50,status: 'Paid',orderPlacedAt: 'Jan 11 2021, 3:45 PM', orderDeliveredAt: 'Jan 12 2021, 10:30 AM',color: Colors.blueAccent),
 Data(name:'Refiance of Marin Lawrence',description:'A Short description of order with some short text',amount: 50,status: 'Pending',orderPlacedAt: 'Jan 11 2021, 3:45 PM',color: Colors.yellowAccent),
 Data(name:'Refiance of Marin Lawrence',description:'A Short description of order with some short text',amount: 50,status: 'Dispute',orderPlacedAt: 'Jan 11 2021, 3:45 PM',color: Colors.deepOrange),
 Data(name:'Refiance of Marin Lawrence',description:'A Short description of order with some short text',amount: 50,status: 'Arrived To Appointment',orderPlacedAt: 'Jan 11 2021, 3:45 PM',color: Colors.pink,arrivedToAppointment: "2:30 AM"),
];