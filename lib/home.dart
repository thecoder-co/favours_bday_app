import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List images = ['assets/images/thanks for friendship.gif'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 32, 67, 1),
        title: Text('Happy Birthday Favourrrr'),
        //backgroundColor: Colors.black,
      ),
      extendBody: true,
      body: Container(
        /*decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color.fromARGB(255, 0, 4, 26),
            ],
          ),
        ),*/
        color: Color.fromRGBO(33, 33, 33, 1),
        child: Swiper(
          loop: false,
          viewportFraction: 0.5,
          duration: 1000,
          itemCount: 8,
          scale: 0.9,
          control: new SwiperControl(),
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: index == 0
                      ? InkWell(
                          child: Container(
                            child: Image(
                              image: AssetImage(
                                'assets/images/shit you love.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/shit you love');
                          },
                        )
                      : index == 1
                          ? InkWell(
                              child: Container(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/thanks.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, '/thanks');
                              },
                            )
                          : Container(
                              color: Color.fromRGBO(30, 32, 67, 1),
                              height: 240,
                              width: 360,
                            ),
                ),
              ),
              index > 1
                  ? Text(
                      'No $index',
                      style: TextStyle(fontSize: 20),
                    )
                  : Text(''),
            ],
          ),
        ),
      ),
    );
  }
}
