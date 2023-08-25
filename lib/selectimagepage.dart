import 'package:dicee/TfliteModel.dart';
import 'package:flutter/material.dart';

class SelectImage extends StatelessWidget {
  const SelectImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/bgimage.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  width: 100,
                  height: 400,
                  child: IconButton(
                    iconSize: 100,
                    color: Colors.black,
                    icon: const Icon(Icons.camera),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TfliteModel()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
