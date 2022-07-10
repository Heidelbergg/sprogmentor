import 'package:flutter/material.dart';

class FlexChauffeurPage extends StatefulWidget {
  const FlexChauffeurPage({Key? key}) : super(key: key);

  @override
  State<FlexChauffeurPage> createState() => _FlexChauffeurPageState();
}

class _FlexChauffeurPageState extends State<FlexChauffeurPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: const Center(child: Text("Flextraffik", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),))),
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
