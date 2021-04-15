import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Thanks extends StatefulWidget {
  Thanks({Key key}) : super(key: key);

  @override
  _ThanksState createState() => _ThanksState();
}

class _ThanksState extends State<Thanks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Thankssss'),
          backgroundColor: Color.fromRGBO(56, 30, 88, 1),
        ),
        body: Container(
          color: Color.fromRGBO(33, 33, 33, 1),
          child: Swiper(
            itemCount: 8,
            autoplayDisableOnInteraction: true,
            duration: 1000,
            autoplay: true,
            pagination: SwiperPagination(alignment: Alignment.bottomCenter),
            loop: false,
            viewportFraction: 0.8,
            scale: 0.9,
            control: SwiperControl(),
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => index == 0
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage('assets/images/thanks big.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: index % 2 == 0
                          ? [
                              Text(
                                'Some\nPretty\nText',
                                style: TextStyle(fontSize: 30),
                              ),
                              Spacer(),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height: 500,
                                      width: 320,
                                      child: Card(),
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text('some pictures go here'),
                                ],
                              ),
                            ]
                          : [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height: 500,
                                      width: 320,
                                      child: Card(),
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text('some pictures go here'),
                                ],
                              ),
                              Spacer(),
                              Text(
                                'Some\nPretty\nText',
                                style: TextStyle(fontSize: 30),
                              ),
                            ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
