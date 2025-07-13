import 'package:flutter/material.dart';

void main() { runApp(CyberSecureLearnApp()); }

class CyberSecureLearnApp extends StatelessWidget { @override Widget build(BuildContext context) { return MaterialApp( title: 'CyberSecure Learn', debugShowCheckedModeBanner: false, theme: ThemeData( primarySwatch: Colors.blue, ), home: LoginScreen(), ); } }

class LoginScreen extends StatelessWidget { final TextEditingController emailController = TextEditingController(); final TextEditingController passwordController = TextEditingController();

@override Widget build(BuildContext context) { return Scaffold( appBar: AppBar(title: Text('Login')), body: Padding( padding: const EdgeInsets.all(16.0), child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [ TextField( controller: emailController, decoration: InputDecoration(labelText: 'Email'), ), SizedBox(height: 10), TextField( controller: passwordController, decoration: InputDecoration(labelText: 'Password'), obscureText: true, ), SizedBox(height: 20), ElevatedButton( onPressed: () { Navigator.push( context, MaterialPageRoute(builder: (context) => DashboardScreen()), ); }, child: Text('Login'), ), ], ), ), ); } }

class DashboardScreen extends StatelessWidget { final List<String> modules = [ 'Introduction to Cybersecurity', 'Phishing & Social Engineering', 'Safe Password Practices', 'Mobile Device Security' ];

@override Widget build(BuildContext context) { return Scaffold( appBar: AppBar(title: Text('Dashboard')), body: ListView.builder( itemCount: modules.length, itemBuilder: (context, index) { return ListTile( title: Text(modules[index]), onTap: () { Navigator.push( context, MaterialPageRoute( builder: (context) => LessonScreen(title: modules[index]), ), ); }, ); }, ), ); } }

class LessonScreen extends StatelessWidget { final String title;

LessonScreen({required this.title});

@override Widget build(BuildContext context) { return Scaffold( appBar: AppBar(title: Text(title)), body: Padding( padding: const EdgeInsets.all(16.0), child: Text( 'This is the content for "$title". 
More in-depth learning materials will be loaded here in the future.', ), ), ); } }

