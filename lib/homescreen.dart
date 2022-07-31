import './models/GridTileData.dart';
import './models/GridTileItems.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentIndex = 0;

  final tabs = [
    GridContent(),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Thank You!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        RichText(
          text: const TextSpan(
            text: 'You have selected ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontFamily: 'Montserrat',
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Flutter BloC',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic),
              ),
              TextSpan(
                text: ' as the best library.',
                style: TextStyle(
                  fontSize: 19,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        )
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Welcome to the world of Flutter',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Feedback',
              backgroundColor: Colors.blue,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: tabs[_currentIndex]);
  }
}

class GridContent extends StatelessWidget {
  const GridContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: <Widget>[
          // gridTileData
          //     .map(
          //       (gridTileItems) => GridTileItems(
          //         GridTileItems.title,
          //         GridTileItems.colour,
          //       ),
          //     )
          //     .toList(),

          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 51, 116, 221),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            margin: EdgeInsets.all(10),
            child: const Center(
              child: Text(
                'Flutter BloC',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            margin: EdgeInsets.all(10),
            child: const Center(
              child: Text(
                'Provider',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            margin: EdgeInsets.all(10),
            child: const Center(
              child: Text(
                'Riverpod',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            margin: EdgeInsets.all(10),
            child: const Center(
              child: Text(
                'GetX',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            margin: EdgeInsets.all(10),
            child: const Center(
              child: Text(
                'GetIt',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            margin: EdgeInsets.all(10),
            child: const Center(
              child: Text(
                'setState',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            margin: EdgeInsets.all(10),
            child: const Center(
              child: Text(
                'GetX',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
