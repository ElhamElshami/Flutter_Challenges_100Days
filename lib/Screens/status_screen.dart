import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Card(
        child: ListTile(
          leading:Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration:   BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: CircleAvatar(
                   child: Image.network("https://s3.amazonaws.com/wll-community-production/images/no-avatar.png")
                 ),
              ),
               Positioned(
                 bottom: 0,
                 right: 0,
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50),
                     color: Colors.green
                   ),
                   child: const Icon(Icons.add,color: Colors.white,size: 18,),
                 ),
               )
            ],
          ) ,
           title: const Text(
             'My Status',
             style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
             ),
           ),
           subtitle: const Text('Tap to add status update',
           style: TextStyle(
             fontSize:15.0
           ),
           ),
        ),
      ),
    );
  }
}