import 'package:flutter/material.dart';

class Listtilescreen extends StatefulWidget {
  const Listtilescreen({super.key});

  @override
  State<Listtilescreen> createState() => _ListtilescreenState();
}

class _ListtilescreenState extends State<Listtilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text(" Sanjog"),
            subtitle: const Text("29B"),
            trailing: Wrap(
              spacing: 8,
              children: [
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
              ],
            ),
            tileColor: Colors.amber,
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.verified_user),
            title: Text(" Sanjog"),
            subtitle: Text("29B"),
            trailing: Icon(Icons.add),
            tileColor: Colors.amber,
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.verified_user),
            title: Text(" Sanjog"),
            subtitle: Text("29B"),
            trailing: Icon(Icons.add),
            tileColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
