import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffa757575),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22), 
            topRight:Radius.circular(22),
          ),
          color: Colors.white
        ),   
        child: Padding(
          padding: const EdgeInsets.all(34.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              TextField(
                onChanged: (value){

                },
                decoration: InputDecoration(
                  // enabledBorder:

                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24,),
              MaterialButton(
                onPressed: (){
                  
                },
                // padding: EdgeInsets.symmetric(horizontal:100,vertical: 24),
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),  

      ),
    );
  }
}