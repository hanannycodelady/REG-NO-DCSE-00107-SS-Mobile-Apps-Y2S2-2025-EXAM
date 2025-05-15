import 'package:flutter/material.dart';

class Mockupscreenone extends StatelessWidget {
  final List<Map<String, String>> movies = [
    {
      "title": "To all the boys: P.S. I still love you(2019)",
      "year": "2019.1h 48m",
      "category": "Romance ,Comedy",
      "description": "Lara jean and peter have just taken their romance from a lo.....",
      "Image":"lib/assets/images/to all the boys.jpeg"
    },
    {
      "title": "Baby Driver )",
      "year": "2019.1h 53m",
      "category": " Action ,Crime ,Triller ",
      "description": "After being coerced into working for a crime boss ",
      "Image":"lib/assets/images/baby driver.jpeg"
    },
    {
      "title": "John wick )",
      "year": "2019.1h 53m",
      "category": " Action ,Crime ,Triller ",
      "description": "John Wick is on the run after killing a member .....",
      "Image":"lib/assets/images/john wick.jpeg"
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            // This is my top section 
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              color: Colors.white,
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      
                    },
                    icon: const Icon(Icons.search),
                    label: const Text("Find your movies..."),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),

            // Popular Heading
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: const Text(
                "Popular",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // Movie List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie["title"]!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text("Year: ${movie["year"]}"),
                          Text("Category: ${movie["category"]}"),
                          const SizedBox(height: 6),
                          Text(
                            movie["description"]!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_outlined),
            label: "Movies",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
