import 'package:bills_bid/login.dart';
// import 'package:bills_bid/register.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Home',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/green_template.png"),
              fit: BoxFit.cover)),
      child: Center(child: Carousel()),
    ));
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
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
      Padding(
          padding: EdgeInsets.only(left: 55, bottom: 0, right: 55),
          child: Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      primary: Color(0xFF607C4B),
                      elevation: 5,
                      shadowColor: Color(0xFF7BC144),
                      fixedSize: const Size(266, 39.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                              bottomRight: Radius.circular(18)))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LoginPage()), //AQUI É PRA MUDAR O REDIRECIONAMENTO - FT WILLIAM
                    );
                  },
                  child: const Text("LOGIN",
                      style: TextStyle(
                        fontFamily: "Arial",
                        fontSize: 18,
                        color: Colors.white,
                      ))),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        primary: Color(0xFF607C4B),
                        elevation: 5,
                        shadowColor: Color(0xFF7BC144),
                        fixedSize: const Size(266, 39.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(18),
                                bottomLeft: Radius.circular(18),
                                bottomRight: Radius.circular(18)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LoginPage()), //AQUI É PRA MUDAR O REDIRECIONAMENTO - FT WILLIAM
                      );
                    },
                    child: const Text("LOGIN",
                        style: TextStyle(
                          fontFamily: "Arial",
                          fontSize: 18,
                          color: Colors.white,
                        ))),
              ),
              Text("By registering, you agree to the"),
              RichText(
                text: TextSpan(
                  text: 'Hello ',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: "User Notice", style: TextStyle()),
                    TextSpan(text: " and "),
                    TextSpan(text: "Privacy Policy")
                  ],
                ),
              )
            ],
          )),
    ]);
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
