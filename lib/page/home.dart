import 'package:exam/page/drawer.dart';
import 'package:flutter/material.dart';


class FileManagerScreen extends StatelessWidget {
  const FileManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 175, 175),
          appBar: AppBar(
            title: const Text("FILE"),
            backgroundColor: Colors.green[900],
          ),
          endDrawer: const DrawerD(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              SizedBox(width: 20),
               Text("Phone", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey[800])),
              SizedBox(width: 18),
              Text("Pob", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey[800])),
              SizedBox(width: 18),
              Text("Storage", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey[800])),
              SizedBox(width: 18),
               Text("Phone", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey[800])),
              SizedBox(width: 18),
              Text("Pob", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey[800])),
              SizedBox(width: 18),
              Text("Storage", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey[800])),
              SizedBox(width: 18),
              Text("File", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey[800])),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search files",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: const Color.fromARGB(255, 175, 116, 116),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Row(
            
            children: [
            const SizedBox(width: 18),
            Icon(Icons.storage),
            Padding(
            padding: EdgeInsets.all(16.0),
            
            child: Text("Phone Storage\nTotal: 244GB    Available: 135GB"),
          )
            ],
          ),

          Expanded(
            child: ListView(
              children: const [
                FileCategoryTile(icon: Icons.description, label: "Documents (45)", desc: "Includes Word, PPT, Excel, WPS, etc."),
                FileCategoryTile(icon: Icons.book, label: "Ebooks (88)", desc: "Includes .umd, .ebk, .txt, .chm, etc."),
                FileCategoryTile(icon: Icons.android, label: "Apks (0)", desc: "Includes .apk files"),
                FileCategoryTile(icon: Icons.archive, label: "Archives (4)", desc: "Includes .7z, .rar, .zip, .iso, etc."),
                FileCategoryTile(icon: Icons.insert_drive_file, label: "Big files (41)", desc: "Includes files > 50 MB"),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.playlist_play), label: "PLAYLIST"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "TOMPS"),
          BottomNavigationBarItem(icon: Icon(Icons.clear), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "SOCIAL"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "ME"),
        ],
      ),
    );
  }
}

class FileCategoryTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String desc;

  const FileCategoryTile({super.key, required this.icon, required this.label, required this.desc});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 32),
      title: Text(label),
      subtitle: Text(desc),
      onTap: () {},
    );
  }
}





