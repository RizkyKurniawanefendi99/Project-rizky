import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Tambahkan logika untuk menampilkan notifikasi
            },
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Tambahkan logika untuk logout
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/profile_picture.jpg'), // Ganti dengan path foto profil
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama Pengguna',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Tanggal Lahir: 10 Januari 1980',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Alamat: Jakarta, Indonesia',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Email: user@example.com',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk menavigasi ke halaman pengaturan/edit profil
                  },
                  child: Text('Edit Profil'),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildRoundedBox(Icons.favorite, 'Detak Jantung', '75 bpm', [Colors.lightBlueAccent, Colors.blue]),
                        SizedBox(height: 10),
                        _buildRoundedBox(Icons.local_hospital, 'Tekanan Darah', '120/80 mmHg', [Colors.lightBlueAccent, Colors.blue]),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildRoundedBox(Icons.assessment, 'Gula Darah', '100 mg/dL', [Colors.lightBlueAccent, Colors.blue]),
                        SizedBox(height: 10),
                        _buildRoundedBox(Icons.eco, 'Kolesterol', '150 mg/dL', [Colors.lightBlueAccent, Colors.blue]),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildRoundedBox(Icons.fitness_center, 'Berat Badan', '70 kg', [Colors.lightBlueAccent, Colors.blue]),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _buildRoundedBox(Icons.height, 'Tinggi Badan', '170 cm', [Colors.lightBlueAccent, Colors.blue]),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
        ],
      ),
    );
  }

  Widget _buildRoundedBox(IconData icon, String parameter, String value, List<Color> gradientColors) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(height: 5),
              Text(
                parameter,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                value,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
          padding: EdgeInsets.all(8),
          child: Text(
            'Perbarui ' + parameter.toLowerCase(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
