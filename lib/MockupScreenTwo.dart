import 'package:flutter/material.dart';

class Mockupscreentwo extends StatelessWidget {
  const Mockupscreentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 254, 254),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Featured Movie Banner
            Stack(
              children: [
                Container(
                  height: 240,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      // Use a placeholder or actual URL since assets can't be loaded directly with NetworkImage
                      image: NetworkImage('assets/images/jumanji copy.jpeg'),
                      // For local assets, configure pubspec.yaml and use AssetImage:
                      // image: AssetImage('assets/images/jumanji.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'TRHD',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Jumanji: The Next Level',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Action .Adventure .Comedy .Fantasy',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            
            // What's Popular Section
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "What's Popular",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, 
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildMovieCard(
                    'Birds of Prey',
                    'Action, Comedy',
                    'assets/images/Birds of prey.jpg', 
                  ),
                  const SizedBox(width: 12),
                  _buildMovieCard(
                    'Red Sparrow',
                    'Mystery, Thriller',
                    'assets/images/red sparrow.jpg', 
                  ),
                ],
              ),
            ),
            
            // Now Playing Section
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Now Playing',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, 
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildMovieCard(
                    'To All The Boys: P.S. I Still Love You',
                    'Romance, Drama',
                    'assets/images/to all the boys.jpeg', 
                  ),
                  const SizedBox(width: 12),
                  _buildMovieCard(
                    'Ford v Ferrari',
                    'Biography, Sport',
                    'assets/images/Ford_v._Ferrari_(2019_film_poster).png',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  
  Widget _buildMovieCard(String title, String genres, String imageUrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              // For assets, configure pubspec.yaml and use:
              // image: AssetImage(imageUrl),
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 110,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Changed to black for visibility
                ),
              ),
              const SizedBox(height: 2),
              Text(
                genres,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}