import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello'),
              Text('Corvit'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hello'),
                  Text('Corvit'),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text('Click'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    child: Text('Click'),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child: Text('Click'),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child: Text('Click'),
                  ),
                ],
              ),
            ],
          )
        )
      ),

    );
  }
}





