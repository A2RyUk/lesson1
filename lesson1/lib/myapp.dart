import 'package:flutter/material.dart';
import 'package:waterdelivery/login.dart';
import 'package:waterdelivery/create_account.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/a.png'),
                fit: BoxFit.cover
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text('wwater', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 180)),
                Container(
                  padding: EdgeInsets.all(6),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Water Delivery',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(6),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('We deliver water at any point of the Earth in 30 minutes',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                SizedBox(
                  child: MaterialButton(
                      color: Colors.white,
                      child: Text('Login', style: TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))
                      ),
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Login()
                            ),
                        );
                        print('Login');
                      }
                  ),height: 50, width: 330,),
                Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                SizedBox(
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            side: BorderSide(
                                width: 2,
                                color: Colors.white
                            )
                        ),
                        child: Text('Sign Up', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Signup()
                            ),
                          );
                          print('Sign Up');
                        }
                    ),height: 50, width: 330)
              ],
            ),
          )
      ),
    );
    throw UnimplementedError();
  }
}