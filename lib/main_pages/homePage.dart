import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sprogmentor/main_pages/transport_pages/transportMainPage.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Colors.indigoAccent,
            height: MediaQuery.of(context).size.height / 4,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 12, bottom: MediaQuery.of(context).size.height / 25),
                    child: const Center(child: Text("KT Sprogmentor", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),))),
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: const Color(0xFFF3F5F7),
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: TransportPage()));},
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  margin: EdgeInsets.only(left: 15, right: 10, top: 15, bottom: 15),
                  color: Colors.indigoAccent,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height / 6,
                              child: SvgPicture.asset('assets/Bus driver-pana.svg',)),
                        ),
                        ListTile(
                          title: Text("Transport", style: TextStyle(color: Colors.white),),
                          subtitle: Text("Denne sektion indeholder emner omkring transport."),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  color: Colors.indigoAccent,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height / 6,
                              child: SvgPicture.asset('assets/Coffee shop-amico.svg',)),
                        ),
                        ListTile(
                          title: Text("Restauration", style: TextStyle(color: Colors.white),),
                          subtitle: Text("Denne sektion indeholder emner omkring service."),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  margin: EdgeInsets.only(left: 15, right: 10, top: 15, bottom: 15),
                  color: Colors.indigoAccent,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height / 6,
                              child: SvgPicture.asset('assets/Obsessive compulsive disorder-pana.svg',)),
                        ),
                        ListTile(
                          title: Text("Rengøring", style: TextStyle(color: Colors.white),),
                          subtitle: Text("Denne sektion indeholder emner omkring rengøring."),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  color: Colors.indigoAccent,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height / 6,
                              child: SvgPicture.asset('assets/Checking boxes-bro.svg',)),
                        ),
                        ListTile(
                          title: Text("Lagerarbejde", style: TextStyle(color: Colors.white),),
                          subtitle: Text("Denne sektion indeholder emner omkring lagerarbejde."),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
