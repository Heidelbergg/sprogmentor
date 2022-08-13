import 'package:flutter/material.dart';

class CabPage extends StatefulWidget {
  const CabPage({Key? key}) : super(key: key);

  @override
  State<CabPage> createState() => _CabPageState();
}

class _CabPageState extends State<CabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        toolbarHeight: kToolbarHeight + 2,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, color: Colors.white,),),
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
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 6, bottom: MediaQuery.of(context).size.height / 8),
                    child: const Center(child: Text("Taxachauffør", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),))),
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
        ],
      ),
    );
  }
}
