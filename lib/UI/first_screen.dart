import 'package:chattinger/Animations/delayed_animation.dart';
import 'package:chattinger/UI/login_screen.dart';
import 'package:chattinger/UI/signup_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  double _scale;
  Animation animation;
  AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
                ),
            color: Color(0xFFF001117).withOpacity(0.7),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                ),
                DelayedAnimation(
                  child: Text(
                    'Chattinger',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  delay: delayedAmount + 1000,
                ),
                SizedBox(
                  height: 30.0,
                ),
                DelayedAnimation(
                  child: Text(
                    'The Ideal Place To',
                    style: TextStyle(
                      fontFamily: 'Muli',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  delay: delayedAmount + 2000,
                ),
                SizedBox(
                  height: 30.0,
                ),
                DelayedAnimation(
                  child: Text(
                    'Meet Your Peers',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Muli',
                    ),
                  ),
                  delay: delayedAmount + 3000,
                ),
                SizedBox(
                  height: 50.0,
                ),
                DelayedAnimation(
                  child: Container(
                    width: 250.0,
                    child: FlatButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          )),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                      ),
                      color: Colors.redAccent,
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  delay: delayedAmount + 5000,
                ),
                SizedBox(
                  height: 20.0,
                ),
                DelayedAnimation(
                  child: Container(
                    width: 250.0,
                    child: FlatButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          )),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                      ),
                      color: Colors.redAccent,
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  delay: delayedAmount + 5000,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
