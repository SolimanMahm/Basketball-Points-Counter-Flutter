import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasketballPointsCounter(),
    ),
  );
}

class BasketballPointsCounter extends StatefulWidget {
  const BasketballPointsCounter({Key? key}) : super(key: key);

  @override
  State<BasketballPointsCounter> createState() =>
      _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {
  int teamAPoints = 0, teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Points Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                width: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      "${teamAPoints}",
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        return setState(() {
                          if(teamAPoints+1<=99)teamAPoints += 1;
                        });
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        return setState(() {
                          if(teamAPoints+2<=99)teamAPoints += 2;
                        });
                      },
                      child: const Text(
                        "Add 2 Points",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        return setState(() {
                          if(teamAPoints+3<=99)teamAPoints += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 Points",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                child: VerticalDivider(
                  color: Colors.grey[350],
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                ),
              ),
              Container(
                height: 500,
                width: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      "${teamBPoints}",
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        return setState(() {
                          if(teamBPoints+1<=99)teamBPoints += 1;
                        });
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        return setState(() {
                          if(teamBPoints+2<=99)teamBPoints += 2;
                        });
                      },
                      child: const Text(
                        "Add 2 Points",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        return setState(() {
                          if(teamBPoints+3<=99)teamBPoints += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 Points",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(150, 50),
            ),
            onPressed: () {
              return setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
            child: const Text(
              "Reset",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
