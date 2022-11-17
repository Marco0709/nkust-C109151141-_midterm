import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{

  final tabs=[
    Center(child: screen1(),),
    Center(child: screen2(),),
    Center(child: screen3(),),
    Center(child: screen4(),),
  ];
  int _currentindex = 0;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.greenAccent,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                                    label: 'Home',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
                                    label: 'Alarm',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
                                    label: 'Business',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
                                    label: 'School',
                                    ),
          ],
          onTap: (index){ setState(() {
                                      _currentindex = index;
                        });

          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget{

  final String s1 = "I'm Marco. I love to eat ,and I love watching the NBA."
                    "I was born in Kinmen and came to Kaohsiung when I was 18 for college education."
                    "I'm major in computer science information engineering."
                    "cuz I grew up in Kinmen, I really wanna experience big city life."
                    "after graduate from college I will directly choose employment."
                    "cuz I really wanna apply UCLA, that's my dream, "
                    "to get closer to my dream, I think I need a lot of money.";

  @override
  Widget build(BuildContext context){

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I ",
                style: TextStyle(fontSize: 24,
                  fontWeight: FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6,6)),
              ],),
            child: Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          Container(
            color: Colors.redAccent,
            child: Image.asset("images/f1.jpg"),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.purple,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/portland.jpg'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(child: Text('學習歷程'),);
  }
}

class screen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("freshman"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 60,
                width: 350,
                child: ListView(
                  children: [
                    Text('1. All pass.'),
                    Text('2. Learn English well.'),
                    Text('3. make alot of friend.'),
                  ],
                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("sophomore"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 60,
                width: 350,
                child: ListView(
                  children: [
                    Text('1. All pass.'),
                    Text('2. Learn English well.'),
                    Text('3. Learn data structures well.'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("junior"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 60,
                width: 350,
                child: ListView(
                  children: [
                    Text('1. All pass.'),
                    Text('2. learn algorithm well'),
                    Text('3. English graduation threshold.'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("senior"),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 60,
                width: 350,
                child: ListView(
                  children: [
                    Text('1. find an internship.'),
                    Text('2. get graduation threshold.'),
                    Text('3. graduate.'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(child: Text('專案方向'),);
  }
}