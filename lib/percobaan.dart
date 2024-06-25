import 'package:flutter/material.dart';

class Percobaan extends StatefulWidget {
  const Percobaan({super.key});

  @override
  State<Percobaan> createState() => _PercobaanState();
}

class _PercobaanState extends State<Percobaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Percobaan Pertama',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 3,
        backgroundColor: const Color.fromARGB(255, 15, 78, 214),
        actions: const [
          Icon(
            Icons.logout,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        leading: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(16),
                      width: 300,
                      height: 300,
                      color: Color.fromARGB(255, 15, 78, 214),
                      child: Image.asset('assets/images/p4.jpg'),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(16),
                      width: 300,
                      height: 300,
                      color: Color.fromARGB(255, 15, 78, 214),
                      child: Image.asset('assets/images/p4.jpg'),
                    ),
                  ],
                );
              },
              itemCount: 10,
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              //physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, asik) {
                return const Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/p4.jpg'),
                      // child: Text(''),
                    ),
                    title: Text('Abed'),
                    subtitle: Text('asik'),
                    trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      SizedBox(
                        //membuat jarak icon like dengan tongsampah
                        width: 10,
                      ),
                      Icon(
                        Icons.comment_rounded,
                        color: Colors.blue,
                      ),
                    ]),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
