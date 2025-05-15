import 'package:flutter/material.dart';

class 
Mockupscreentwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                // Background image
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/jumanji.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // App bar buttons
                Positioned(
                  top: 40,
                  left: 16,
                  child: IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 16,
                  child: IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                // Title and categories
                Positioned(
                  bottom: 50,
                  left: 16,
                  child: Text(
                    'Jumanji:The Next level',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 16,
                  right: 16,
                  child: Row(
                    children: [
                      Text('Action.'),
                      SizedBox(width: 8),
                      Text('Adventure.'),
                      SizedBox(width: 8),
                      Text('Comedy.'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Main content: Movies list
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionTitle('whats popular Movies'),
                  SizedBox(height: 10),
                  MovieItem(title: 'Birds os prey', category: 'Action, Crime'),
                  MovieItem(title: 'Red Sparrow', category: 'Mystery, Triller'),
                  
                  SizedBox(height: 20),
                  SectionTitle('Now Playing'),
                  SizedBox(height: 10),
                  MovieItem(title: 'To all the boys: P.S. I still love you', category: 'Action'),
                  MovieItem(title: 'Ford v Ferrari', category: 'Thriller'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class MovieItem extends StatelessWidget {
  final String title;
  final String category;
  const MovieItem({required this.title, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(Icons.movie),
        title: Text(title),
        subtitle: Text(category),
      ),
    );
  }
}
