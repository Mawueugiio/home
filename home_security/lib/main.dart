import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

FirebaseMessaging _firebaseMessaging=FirebaseMessaging(); 


void main(){

runApp(
  HomePage()
);
ghfhgdj
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // @override
  void onState(){
        
      // super.onState(); 
      setupNotification();
      

        
  }
          
        
  void setupNotification() async{ 
    _firebaseMessaging.getToken().then((token){
        print(token); 
    });
        
    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async{
          print("Message: $message"); },
        onResume: (Map<String,dynamic> message) async{
          print("Message : $message"); },
        onLaunch: (Map<String, dynamic> message) async{
          print("Message: $message");}
          ); 
  }
 
        
          @override
          Widget build(BuildContext context) {
            
            return MaterialApp(
               
                home: Scaffold(
                backgroundColor: Color(0xff00BCD1),
                appBar: AppBar(
                title: Text('Home Security'),),
                body:Center(
                  child:RaisedButton(
                    child:Text("Click"),
                    onPressed: (){},
                  ),
                ),
              ),
            );
          }
        }
       
        
        
        
        
