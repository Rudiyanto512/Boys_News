import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Develover Profil'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueGrey.shade900, Colors.blueGrey.shade200],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text(
                  'Developer Name:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                subtitle: Text('[Muhammad Rudiyanto]', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.confirmation_number, color: Colors.white),
                title: Text('NPM:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                subtitle: Text('[2110020026]', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.school, color: Colors.white),
                title: Text('Class:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                subtitle: Text('[5F SI SISTEM INFORMASI]', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white),
                title: Text('Contact:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                subtitle: Text('[089513626142]', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.location_on, color: Colors.white),
                title: Text('Address:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                subtitle: Text(
                  '[Jl. Jahri Saleh Komp. Kenanga Indah 3]',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
