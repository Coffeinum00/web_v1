import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Color(0xff003d78),
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/map.png',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              height: 100,
              width: 100,
              child: ParallaxStack(
                layers: [
                  ParallaxLayer(
                    yRotation: 1.35,
                    xOffset: 60,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(90),
                        ),
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ),
                  ParallaxLayer(
                    yRotation: 0.35,
                    xOffset: 80,
                    xRotation: 20.2,
                    child: Center(
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/baxy-logo.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
