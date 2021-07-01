import 'package:flutter/material.dart';

class SearchPopular extends StatelessWidget {
  const SearchPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search recipes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                    borderSide: const BorderSide(
                        color: Colors.orangeAccent, width: 2.0),
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Search here",
                  fillColor: Colors.white70),
            ),
            SizedBox(
              height: 26,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'images/food2.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Label(
                          left: 10,
                          top: 10,
                          label: 'Chicken Soup',
                        ),
                        Label(
                          left: 10,
                          bottom: 10,
                          label: 'Rating : 5 Stars',
                        ),
                        Label(
                          right: 10,
                          bottom: 10,
                          label: 'Time Required : 20 minutes',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Label extends StatelessWidget {
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final String label;

  const Label({
    Key? key,
    this.left,
    this.right,
    this.top,
    this.bottom,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      bottom: bottom,
      right: right,
      top: top,
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: Colors.amber.shade500,
          borderRadius: BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(4),
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
