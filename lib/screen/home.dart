import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pop()),
            title: Text('VUI CHƠI TRẺ THƠ'),
            centerTitle: true),
        body: DefaultTabController(
            length: 3,
            child: Builder(
              builder: (BuildContext context) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    TabPageSelector(),
                    Expanded(
                      child: IconTheme(
                        data: IconThemeData(
                          size: 128.0,
                          color: Theme.of(context).accentColor,
                        ),
                        child: TabBarView(
                          children: <Widget>[
                             Column(

                             ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }
}*/

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);
final iconTabs = <Tab>[
  Tab(
    text: 'Hồ Sơ',
  ),
  Tab(text: ('Trò Chơi')),
  Tab(
    text: 'Hoàn Tất',
  )
];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () => Navigator.of(context).pop()),
              title: Text('VUI CHƠI TRẺ THƠ'),
              centerTitle: true,
              bottom: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3.0),
                  insets: EdgeInsets.symmetric(horizontal: 16.0),
                ),
                tabs: iconTabs,
              )),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[Profile(), GamingOption(), PlayScreen()],
          )),
    );
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.redAccent, Colors.pinkAccent],
          )),
          child: Row(
            children: <Widget>[
              Container(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/baby1.jpg'),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Quang Huy",
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.white),
                          ),
                        ],
                      ))),
              Expanded(
                child: Container(
                    child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Giờ chơi của bé trong ngày: 10 tiếng',
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                      Text(
                        'Số game bé chơi vừa qua: 5',
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      )
                    ],
                  ),
                )),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Column(children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Thời gian bé hoạt động điện thoại: ',
                        style: TextStyle(fontSize: 15.0),
                      ))
                ]),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class GamingOption extends StatefulWidget {
  @override
  _GamingOptionState createState() => _GamingOptionState();
}

class _GamingOptionState extends State<GamingOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          GameEdu(),
          SizedBox(
            height: 10.0,
          ),
          GameEntertain()
        ],
      ),
    );
  }
}

Widget GameEdu() {
  return Material(
    color: Colors.white,
    elevation: 14.0,
    shadowColor: Color(0x802196F3),
    child: Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('GAME GIÁO DỤC')),
        Padding(padding: EdgeInsets.all(8.0), child: gameEduContainer())
      ],
    ),
  );
}

Widget gameEduContainer() {
  return Container(
    height: 160.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        imageSection('assets/bt.png', 'Battlefield'),
        SizedBox(width: 20.0),
      ],
    ),
  );
}

Widget labelContainer(String labelVal) {
  return Container(
    height: 30.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          labelVal,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        )
      ],
    ),
  );
}

Widget imageSection(String imageAsset, String appName) {
  return Column(
    children: <Widget>[
      Container(
        height: 100.0,
        width: 100.0,
        decoration: new BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(imageAsset),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20.0)),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        appName,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      )
    ],
  );
}

Widget GameEntertain() {
  return Material(
    color: Colors.white,
    elevation: 14.0,
    shadowColor: Color(0x802196F3),
    child: Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('GAME GIẢI TRÍ ')),
        Padding(padding: EdgeInsets.all(8.0),
            child: gameEntertainContainer())
      ],
    ),
  );
}

Widget gameEntertainContainer() {
  return Container(
    height: 160.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        imageSection('assets/bt.png', 'Battlefield'),
        SizedBox(width: 20.0),
        imageSection('assets/bt.png', 'Battlefield'),
        SizedBox(width: 20.0,)
      ],
    ),
  );
}

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> with TickerProviderStateMixin {
  AnimationController _animationController;

  double _containerPaddingLeft = 20.0;
  double _animationValue;
  double _translateX = 0;
  double _translateY = 0;
  double _rotate = 0;
  double _scale = 1;

  bool show;
  bool sent = false;
  Color _color = Colors.red;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1300));
    show = true;
    _animationController.addListener(() {
      setState(() {
        show = false;
        _animationValue = _animationController.value;
        if (_animationValue >= 0.2 && _animationValue < 0.4) {
          _containerPaddingLeft = 100.0;
          _color = Colors.green;
        } else if (_animationValue >= 0.4 && _animationValue <= 0.5) {
          _translateX = 80.0;
          _rotate = -20.0;
          _scale = 0.1;
        } else if (_animationValue >= 0.5 && _animationValue <= 0.8) {
          _translateY = -20.0;
        } else if (_animationValue >= 0.81) {
          _containerPaddingLeft = 20.0;
          sent = true;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(100.0),
              child: Center(
                  child: GestureDetector(
                      onTap: () {
                        _animationController.forward();
                      },
                      child: AnimatedContainer(
                          decoration: BoxDecoration(
                            color: _color,
                            borderRadius: BorderRadius.circular(100.0),
                            boxShadow: [
                              BoxShadow(
                                color: _color,
                                blurRadius: 21,
                                spreadRadius: -15,
                                offset: Offset(
                                  0.0,
                                  20.0,
                                ),
                              )
                            ],
                          ),
                          padding: EdgeInsets.only(
                              left: _containerPaddingLeft,
                              right: 20.0,
                              top: 10.0,
                              bottom: 10.0),
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeOutCubic,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              (!sent)
                                  ? AnimatedContainer(
                                      duration: Duration(milliseconds: 400),
                                      child: Icon(Icons.play_circle_filled),
                                      curve: Curves.fastOutSlowIn,
                                      transform: Matrix4.translationValues(
                                          _translateX, _translateY, 0)
                                        ..rotateZ(_rotate)
                                        ..scale(_scale),
                                    )
                                  : Container(),
                              AnimatedSize(
                                vsync: this,
                                duration: Duration(milliseconds: 600),
                                child:
                                    show ? SizedBox(width: 10.0) : Container(),
                              ),
                              AnimatedSize(
                                vsync: this,
                                duration: Duration(milliseconds: 200),
                                child: show ? Text("Bắt Đầu") : Container(),
                              ),
                              AnimatedSize(
                                vsync: this,
                                duration: Duration(milliseconds: 200),
                                child: sent ? Icon(Icons.done) : Container(),
                              ),
                              AnimatedSize(
                                vsync: this,
                                alignment: Alignment.topLeft,
                                duration: Duration(milliseconds: 600),
                                child:
                                    sent ? SizedBox(width: 10.0) : Container(),
                              ),
                              AnimatedSize(
                                vsync: this,
                                duration: Duration(milliseconds: 200),
                                child: sent ? Text("Chơi Thôi") : Container(),
                              ),
                            ],
                          ))))),
        ],
      )),
    );
  }
}
