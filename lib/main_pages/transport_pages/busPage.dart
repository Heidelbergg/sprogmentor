import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';

class BusPage extends StatefulWidget {
  const BusPage({Key? key}) : super(key: key);

  @override
  State<BusPage> createState() => _BusPageState();
}

class _BusPageState extends State<BusPage> {
  late ExpandedTileController tileController;

  @override
  void initState() {
    tileController = ExpandedTileController(isExpanded: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        toolbarHeight: kToolbarHeight + 2,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 20,),),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Colors.indigoAccent,
            height: MediaQuery.of(context).size.height / 2,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 4, bottom: MediaQuery.of(context).size.height / 8),
                    child: const Center(child: Text("Buschauffør", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),))),
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
          Container(
            padding: EdgeInsets.only(left: 15, bottom: 15),
            child: Text("Denne side indeholder flere forskellige udtryk som en buschauffør vil blive udsat for i sit daglige virke.", style: TextStyle(color: Colors.grey),),
          ),
          ExpansionTile(leading: Icon(Icons.info_outline), title: Text("Buschauffør"), subtitle: Text("Hvad er en buschauffør?"),children: <Widget>[ListTile(title: Text('Information omkring buschauffør.')),],),
          ExpansionTile(leading: Icon(Icons.info_outline), title: Text("Busstopsted"), subtitle: Text("Hvad indeholder et busstopsted?"),children: <Widget>[ListTile(title: Text('This is tile number 2')),],),
          ExpansionTile(leading: Icon(Icons.info_outline), title: Text("Billet"), subtitle: Text("Hvad er en billet?"),children: <Widget>[ListTile(title: Text('This is tile number 2')),],),
          ExpansionTile(leading: Icon(Icons.info_outline), title: Text("Rejsekort"), subtitle: Text("Hvad er et rejsekort?"),children: <Widget>[ListTile(title: Text('This is tile number 2')),],),
          ExpansionTile(leading: Icon(Icons.info_outline), title: Text("Sæde"), subtitle: Text("Hvad er en sæde?"),children: <Widget>[ListTile(title: Text('This is tile number 2')),],),
        ],
      ),
    );
  }
}
