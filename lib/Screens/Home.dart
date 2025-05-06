import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_clone/Screens/HomeScreen.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      title: 'Linkedin Cloe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  Widget _widgetBody = HomeScreen();
  int _currrentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  void _onItemTapped(int index) async{
    setState(() {
      if(index == 0){
        _currrentIndex = index;
        _widgetBody = HomeScreen();
      }
      else if(index == 1){
        _currrentIndex = index;
        _widgetBody = Center(child: Text('Hell'),);
      }
      else if(index == 2){
        _currrentIndex = index;
        _widgetBody = Center(child: Text('Hell'),);
      }
      else if(index == 3){
        _currrentIndex = index;
        _widgetBody = Center(child: Text('Hell'),);
      }
      else if(index == 4){
        _currrentIndex = index;
        _widgetBody = Center(child: Text('Hell'),);
      }
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              PreferredSize(
                  preferredSize: Size.fromHeight(50.0),
                child: SliverAppBar(
                  pinned: true,
                  backgroundColor: Color(0XFF0e76a8),
                  title: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 15),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey[100],
                                    backgroundImage: NetworkImage("https://i.ytimg.com/vi/9snfz2sQMFQ/maxresdefault.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 17,
                                height: 17,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                                child: Icon(Icons.menu,color: Colors.blue,size: 14,),
                              ),
                            )
                          ]
                        ),
                      ),
                      Container(
                        child: Material(
                          elevation: 10,
                          child: Container(
                            color: Colors.grey[300],
                            width: 370,
                            height: 35,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Search",
                                  hintStyle: TextStyle(color: Colors.black, fontSize: 17,height: 0.5),
                                  icon: Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Icon(Icons.search,color: Colors.black,size: 24,)
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Container(
                                    height: 5,
                                    width: 5,
                                    margin: EdgeInsets.all(5),
                                    child: Icon(Icons.qr_code, color: Colors.grey[800],size: 24,),
                                  ),
                              ),
                            ),
                          ),
                        )
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 36,
                              width: 36,
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(FontAwesomeIcons.reply),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ), systemOverlayStyle: SystemUiOverlayStyle.dark,
                ),
              ),
            ];
          },

          body: Container(
            child: _widgetBody,
          )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currrentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0XFF0e76a8),
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: _currrentIndex == 0
                ? Icon(FontAwesomeIcons.house, size: 25)
                : Icon(FontAwesomeIcons.houseChimneyWindow, size: 25),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: _currrentIndex == 1
                ? Icon(FontAwesomeIcons.userGroup, size: 26)
                : Icon(FontAwesomeIcons.usersViewfinder, size: 26),
            label: 'My Network',
          ),

          BottomNavigationBarItem(
            icon: _currrentIndex == 2
                ? Icon(Icons.add_circle_rounded, size: 26)
                : Icon(Icons.add_circle_outline_rounded, size: 26),
            label: 'Post',
          ),

          BottomNavigationBarItem(
            icon: _currrentIndex == 3
                ? Icon(Icons.notifications, size: 26)
                : Icon(Icons.notifications_outlined, size: 26),
            label: 'Notifications',
          ),

          BottomNavigationBarItem(
            icon: _currrentIndex == 4
                ? Icon(FontAwesomeIcons.briefcase, size: 26)
                : Icon(FontAwesomeIcons.briefcaseMedical, size: 26),
            label: 'Jobs',
          ),

        ],
      ),
    );
  }
}
