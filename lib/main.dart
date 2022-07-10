import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sprogmentor/authentication/login.dart';
import 'package:sprogmentor/main_pages/homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    Widget checkHome(){
      return user == null? const LoginPage() : const HomePageScreen();
    }

    return MaterialApp(
      title: 'Sprogmentor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.indigo,
        primaryColor: const Color(0xFF3EBACE),
        //textTheme: GoogleFonts.oxygenTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
        appBarTheme: const AppBarTheme(elevation: 0),
        useMaterial3: false,
      ),
      home: const HomePageScreen(),
      //home: checkHome(),
    );
  }
}
