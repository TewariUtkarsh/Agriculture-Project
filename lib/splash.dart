import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  final Future<void> future;
  final Widget navigateTo;

  SplashScreen({
    Key key,
    @required this.future,
    @required this.navigateTo,
  }) : assert(future != null),
       assert(navigateTo != null),
       super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.future.then((_){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => widget.navigateTo)
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/img.png'),
      ),
    );
  }
}
