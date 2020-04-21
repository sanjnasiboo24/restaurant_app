import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    title: 'flutter',
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

var bannerItems=['Noodles','Cheese Chilly','Burger','Pizza'];
var bannerImages=[
  'images/noodles.jpg',
  'images/cheese.jpg',
  'images/burger.jpg',
  'images/pizza.jpg'
];

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenHeight=MediaQuery.of(context).size.height;
    var screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: SafeArea(
          child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu,),
                      onPressed: (){},
                    ),
                    Text('Foodies',style: GoogleFonts.abhayaLibre(textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
                    IconButton(
                      icon: Icon(Icons.person),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
              BannerWidgetArea(),
              SizedBox(
                height: 10,
              ),
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8),
                    child:Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(color: Colors.white,spreadRadius: 2,blurRadius: 5,offset: Offset(2,4))
                          ]
                      ),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset('images/burger.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('The Hawkers',style:GoogleFonts.abrilFatface(textStyle: TextStyle(fontSize: 20)),),
                              Text('FLAT 50% off',style: GoogleFonts.abhayaLibre(textStyle: TextStyle(fontSize: 25)),)
                            ],
                          )
                        ],
                      ),
                    ) ,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child:Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(color: Colors.white,spreadRadius: 2,blurRadius: 5,offset: Offset(2,4))
                          ]
                      ),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset('images/bluehill.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Blue Hill',style:GoogleFonts.abrilFatface(textStyle: TextStyle(fontSize: 20)),),
                              Text('FLAT 30% off',style: GoogleFonts.abhayaLibre(textStyle: TextStyle(fontSize: 25)),),
                              Text('Min Order: 40',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 15)),)
                            ],
                          )
                        ],
                      ),
                    ) ,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child:Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(color: Colors.white,spreadRadius: 2,blurRadius: 5,offset: Offset(2,4))
                          ]
                      ),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset('images/pizzahut.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Pizza Hut',style:GoogleFonts.abrilFatface(textStyle: TextStyle(fontSize: 20)),),
                              Text('FLAT 25% off',style: GoogleFonts.abhayaLibre(textStyle: TextStyle(fontSize: 25)),),
                              Text('Min Order: 30',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 15)),)
                            ],
                          )
                        ],
                      ),
                    ) ,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child:Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(color: Colors.white,spreadRadius: 2,blurRadius: 5,offset: Offset(2,4))
                          ]
                      ),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset('images/flipping.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Flipping Noodles',style:GoogleFonts.abrilFatface(textStyle: TextStyle(fontSize: 20)),),
                              Text('FLAT 50% off',style: GoogleFonts.abhayaLibre(textStyle: TextStyle(fontSize: 25)),),
                              Text('Min Order: 50',style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 15)),)
                            ],
                          )
                        ],
                      ),
                    ) ,
                  )
                ],
              )

            ],
          ),
          )
        ),
      ),
    );
  }
}

class BannerWidgetArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight=MediaQuery.of(context).size.height;
    var screenWidth=MediaQuery.of(context).size.width;
    PageController controller= PageController(initialPage: 1,viewportFraction: 0.8);

    List<Widget> banners=List<Widget>();

    for (int x=0; x<bannerItems.length;x++){
      var bannerView=Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.black38,offset:Offset(4,4),blurRadius: 5,spreadRadius: 1 )
                  ]
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              child:Image.asset(bannerImages[x],fit: BoxFit.cover,)
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent,Colors.black]
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(bannerItems[x],style: TextStyle(fontSize: 35,color: Colors.white),),
                    Text('more than 40% OFF',style: TextStyle(fontSize: 22,color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
        )
      );
      banners.add(bannerView);
    }

    return Container(
      width: screenWidth,
      height: screenHeight*0.5,
      child: PageView(
        controller:controller ,
        scrollDirection: Axis.horizontal,
        children:banners,
      ),
    );
  }
}

