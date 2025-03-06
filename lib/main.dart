import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ElevatedButton"),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xFFA03D20),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Luis Montañez Mat: 22308051281313",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16), // Espacio entre el texto y los botones
              _buildIconButton("Home", Icons.home, Colors.blue),
              _buildNextButton(),
              SizedBox(height: 16),
              _buildIconButton("Search", Icons.search, Colors.green),
              _buildNextButton(),
              SizedBox(height: 16),
              _buildIconButton("Settings", Icons.settings, Colors.orange),
              _buildNextButton(),
              SizedBox(height: 16),
              _buildIconButton("Profile", Icons.person, Colors.purple),
              _buildNextButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(String text, IconData icon, Color color) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon, color: Colors.white),
        label: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 4,
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFFCECEC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 2,
        ),
        child: Text(
          "Next",
          style: TextStyle(
            color: Color(0xFFA03D20),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
