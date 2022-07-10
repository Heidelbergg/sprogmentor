import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sprogmentor/main_pages/transport_pages/busPage.dart';
import 'package:sprogmentor/main_pages/transport_pages/cabPage.dart';
import 'package:sprogmentor/main_pages/transport_pages/flexchauffeurPage.dart';

class TransportPage extends StatefulWidget {
  const TransportPage({Key? key}) : super(key: key);

  @override
  State<TransportPage> createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
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
                    child: const Center(child: Text("Transport", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),))),
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
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
            child: OpenContainer(
              closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
              transitionDuration: Duration(milliseconds: 700),
              openBuilder: (BuildContext context, void Function({Object? returnValue}) action) => BusPage(),
              closedBuilder: (BuildContext context, VoidCallback openContainer)  => GestureDetector(
                onTap: openContainer,
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                        child: ListTile(
                          leading: SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              child: SvgPicture.asset('assets/Bus driver-pana.svg',)),
                          title: Text('Buschauffør', style: TextStyle(color: Colors.white),),
                          subtitle: Text('Denne sektion indeholder information omkring buschauffører.'),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
            child: OpenContainer(
              closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
              transitionDuration: Duration(milliseconds: 700),
              openBuilder: (BuildContext context, void Function({Object? returnValue}) action) => CabPage(),
              closedBuilder: (BuildContext context, VoidCallback openContainer)  => GestureDetector(
                onTap: openContainer,
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                        child: ListTile(
                          leading: SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              child: SvgPicture.asset('assets/Car driving-rafiki.svg',)),
                          title: Text('Taxachauffør', style: TextStyle(color: Colors.white),),
                          subtitle: Text('Denne sektion indeholder information omkring taxa.'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
            child: OpenContainer(
              closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
              transitionDuration: Duration(milliseconds: 700),
              openBuilder: (BuildContext context, void Function({Object? returnValue}) action) => FlexChauffeurPage(),
              closedBuilder: (BuildContext context, VoidCallback openContainer)  => GestureDetector(
                onTap: openContainer,
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  color: Colors.indigoAccent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                        child: ListTile(
                          leading: SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              child: SvgPicture.asset('assets/Limousine-pana.svg',)),
                          title: Text('Flextraffik', style: TextStyle(color: Colors.white),),
                          subtitle: Text('Denne sektion indeholder information omkring flexchauffører.'),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
