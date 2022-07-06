import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xffF69E00),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset(
              'assets/image1.jpg',
              fit: BoxFit.fitWidth,
            ),
            Container(
              height: 340.0,
              width: 400.0,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),
                child: Center(
                  child: Swiper(
                    containerHeight: 0.0,
                    scrollDirection: Axis.horizontal,
                    autoplay: false,
                    pagination: const SwiperPagination(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return _buildCarouselItem(context, 1, 1);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildCarouselItem(
      BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Fast ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          color: Colors.yellow[600]),
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'delivery at your',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Colors.black)),
                        TextSpan(
                            text: ' home',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Colors.yellow[600])),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 2.0),
                child: Center(
                    child: Text(
                  'All the best restaurants with their top menu waiting for you, they can\'t wait for your order!!',
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.center,
                )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: 'Button Clicked',
                      backgroundColor: Colors.grey,
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
