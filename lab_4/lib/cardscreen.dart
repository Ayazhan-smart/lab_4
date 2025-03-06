import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          CustomCard(
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Sonu Nigam',
            subtitle: 'Best of Sonu Nigam Music.',
            icon: Icons.album,
            color: Colors.red,
          ),
          CustomCard(
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Taylor Swift',
            subtitle: 'Top Hits Collection.',
            icon: Icons.music_note,
            color: Colors.blue,
          ),
          CustomCard(
            imageUrl: 'https://via.placeholder.com/150',
            title: 'The Beatles',
            subtitle: 'Legendary Rock Band.',
            icon: Icons.audiotrack,
            color: Colors.green,
          ),
          CustomCard(
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Ed Sheeran',
            subtitle: 'Perfect & Shape of You.',
            icon: Icons.headphones,
            color: Colors.purple,
          ),
          CustomCard(
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Adele',
            subtitle: 'Rolling in the Deep & More.',
            icon: Icons.mic,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}

// ✅ **Карточка үшін жеке виджет (енді сурет те қосылды)**
class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final String imageUrl;

  CustomCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        padding: EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: color,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                child: Image.network(imageUrl, fit: BoxFit.cover, width: double.infinity, height: 120),
              ),
              ListTile(
                leading: Icon(icon, size: 50, color: Colors.white),
                title: Text(
                  title,
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                subtitle: Text(
                  subtitle,
                  style: TextStyle(fontSize: 16.0, color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
