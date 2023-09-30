import 'package:flutter/material.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final String profileImageUrl = 'https://shorturl.at/betSW';
  final List<String> imageUrls = [
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',
    'https://shorturl.at/bqvxH',

  ];

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: isPortrait
          ? buildPortraitLayout()
          : Row(
        children: [
          // Circle Avatar in Landscape Mode
          Container(
            width: MediaQuery.of(context).size.width * 0.2, // 20% of screen width
            child: CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(profileImageUrl),
            ),
          ),
          Expanded(child: buildLandscapeLayout()),
        ],
      ),
    );
  }

  Widget buildPortraitLayout() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 150,
            backgroundImage: NetworkImage(profileImageUrl),
          ),

          // Headline
          Text(
            'Md Shahadat Hossain',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Text Quote
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Software Engineer',
              style: TextStyle(fontSize: 18),
            ),
          ),

          // Images with Scrolling in Cards
          SizedBox(
            height: 1000, // Adjust height based on portrait orientation
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 columns in landscape
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 16 / 9, // Set aspect ratio for landscape
              ),
              shrinkWrap: true,
              itemCount: imageUrls.length, // Number of images
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(imageUrls[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLandscapeLayout() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Headline
          Text(
            'Md Shahadat Hossain',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Text Quote
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Software Engineer',
              style: TextStyle(fontSize: 18),
            ),
          ),

          // Network Images in GridView with 3 columns
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 3 columns in landscape
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 16 / 9, // Set aspect ratio for landscape
            ),
            shrinkWrap: true,
            itemCount: imageUrls.length, // Number of images
            itemBuilder: (context, index) {
              return Card(
                elevation: 4.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(imageUrls[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
