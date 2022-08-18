import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/mini-logo.png",
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    "BILLS ",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "BID",
                    style: TextStyle(color: Color(0xFF7BC144)),
                  )
                ],
              ),
            ),
          )),
      body: Center(child: Carousel()),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;

  List<String> imagesC = [
    "images/testeFODA.png",
    "images/teste3.png",
    "images/teste2.png"
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 335,
          child: PageView.builder(
            itemCount: imagesC.length,
            pageSnapping: true,
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (context, pagePosition) {
              bool active = pagePosition == activePage;
              return slider(imagesC, pagePosition, active);
            },
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(imagesC.length, activePage)),
        Column(children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF7BC144),
                  elevation: 5,
                  shadowColor: Color(0xFF7BC144),
                  fixedSize: const Size(267.0, 50.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                print("Página de Login");
              },
              child: const Text("LOGIN",
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontSize: 18,
                    color: Colors.white,
                  ))),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  primary: Color(0xFF7BC144),
                  elevation: 5,
                  shadowColor: Color(0xFF7BC144),
                  fixedSize: const Size(267.0, 50.0),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                print("Página de Registro");
              },
              child: const Text("REGISTER",
                  style: TextStyle(
                    fontFamily: "Arial",
                    fontSize: 18,
                    color: Colors.white,
                  )))),
        ])
      ],
    );
  }
}

AnimatedContainer slider(imagesC, pagePosition, active) {
  double margin = active ? 10 : 20;
  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: new BoxDecoration(
        image:
            new DecorationImage(image: ExactAssetImage(imagesC[pagePosition]))),
  );
}

imageAnimation(PageController animation, imagesC, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Image.network(imagesC[pagePosition]),
    ),
  );
}

List<Widget> indicators(imagesCLenght, currentIndex) {
  return List<Widget>.generate(imagesCLenght, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
