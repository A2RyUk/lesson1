import 'package:flutter/material.dart';
import 'package:waterdelivery/myapp.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
    throw UnimplementedError();
  }
}

class _Login extends State<Login> with WidgetsBindingObserver{
  bool hidePass = true;       //thực hiện hiển thị bật tắt pass và icon invisible on, off


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/b.png'),
                fit: BoxFit.cover
            ),
          ),
          child: Container(
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        child: Icon(Icons.arrow_back_ios, size: 28, color: Colors.white),
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => MyApp()
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 40)
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Welcome\n Back', style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 80)
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(4),
                      child: TextField(
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: 'water@gmail.com',
                            suffixIcon: Icon(Icons.check)
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5)
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(4),
                      child: TextField(
                        style: TextStyle(fontSize: 14),
                        obscureText: hidePass,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key_outlined),
                            hintText: 'Password',
                            suffixIcon: InkWell(
                              onTap: (){
                                setState(() {
                                  hidePass = !hidePass;     //set hidePass = giá trị đối của nó
                                });
                              },
                                child: Icon(hidePass ? Icons.visibility : Icons.visibility_off)      //nếu đang ẩn pass thì hiện icon visibility không thì hiện visibility_off
                            )
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 4)
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text('Forgot password?', style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    SizedBox(
                      child: MaterialButton(
                          color: Colors.blue[600],
                          child: Text('Login', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                          onPressed: (){
                            print('Login');
                          }
                      ),height: 45, width: 330,),
                    Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                    OrDivider(),
                    Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                    SizedBox(
                        child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                side: BorderSide(
                                    width: 2,
                                    color: Colors.black26
                                )
                            ),
                            child: Text('Sign Up', style: TextStyle(fontSize: 16, color: Colors.black26, fontWeight: FontWeight.bold),),
                            onPressed: (){
                              print('Sign Up');
                            }
                        ),height: 45, width: 330),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),

                  ],
                ),
              )
          )
      ),
    );
    throw UnimplementedError();
  }
}

class OrDivider extends StatelessWidget{          //vẽ khoảng trống nữa 2 button login và signup
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Divider(color: Colors.black45,
              height: 1.5,
              )
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text('or', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45),),
          ),
          Expanded(
              child: Divider(color: Colors.black45,
                height: 1.5,
              )
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}