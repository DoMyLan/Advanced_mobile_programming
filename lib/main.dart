import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduction App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroductionPage(),
    );
  }
}

class IntroductionPage extends StatefulWidget {
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  void initState() {
    super.initState();
    // Chuyển sang trang chính sau 10 giây
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 100,
                height: 100,         
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(50.0), // Bo tròn góc của hình ảnh
                  child: Image.network(
                    'https://scontent.fsgn14-1.fna.fbcdn.net/v/t39.30808-1/274778051_3116659858609853_3406031713003591658_n.jpg?stp=dst-jpg_p160x160&_nc_cat=104&ccb=1-7&_nc_sid=5740b7&_nc_ohc=I7v_ZqBFNoAAX8AAPoB&_nc_ht=scontent.fsgn14-1.fna&oh=00_AfApOP0-hA7wqndCs99SsYl97eL-damu0hacUKD_npaJ_Q&oe=65A52344',
                    fit: BoxFit.cover,
                  ),
                )),

            SizedBox(height: 16), // Khoảng cách giữa ảnh và văn bản
            Text(
              'Welcome to my channel. MyLan in your area...',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text(
          "It's my HomePage!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
