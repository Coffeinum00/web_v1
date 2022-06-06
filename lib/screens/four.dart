import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:provider/provider.dart';

import '../logic/page_provider.dart';

class Four extends StatefulWidget {
  const Four({Key? key}) : super(key: key);

  @override
  State<Four> createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Color(0xff003d78),
      child: Stack(
        children: [
          Positioned(
            top: 250,
            left: 100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Color(0xff191C2B),
              ),
              height: 300,
              width: 300,
              child: ParallaxStack(
                layers: [
                  ParallaxLayer(
                    yRotation: 1.35,
                    xOffset: 82,
                    xRotation: 2.6,
                    child: Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xff0067a8),
                        ),
                      ),
                    ),
                  ),
                  ParallaxLayer(
                    child: Center(child: Text('Ziomus')),
                    yRotation: 0.35,
                    xOffset: 80,
                    xRotation: 0.6,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 450,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.transparent),
              height: 280,
              width: 280,
              child: ParallaxStack(
                layers: [
                  ParallaxLayer(
                    child: Center(
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Color(0xff191C2B),
                            borderRadius: BorderRadius.circular(90)),
                      ),
                    ),
                    yRotation: 0.35,
                    xOffset: 80,
                    xRotation: 0.6,
                  ),
                  ParallaxLayer(
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Provider.of<Controller>(context, listen: false)
                              .control!
                              .animateToPage(1,
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.linearToEaseOut);
                        },
                        child: Container(
                          child: const Center(child: Text('Click me')),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xff0067a8),
                              borderRadius: BorderRadius.circular(90)),
                        ),
                      ),
                    ),
                    yRotation: 0.5,
                    xOffset: 8,
                    xRotation: 0.6,
                    yOffset: 0.5,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 250,
              width: 250,
              child: ParallaxStack(
                layers: [
                  ParallaxLayer(
                    yOffset: 0.2,
                    zRotation: 0.2,
                    yRotation: 0.35,
                    xOffset: 60,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  ParallaxLayer(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/baxy-logo.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    yRotation: 0.35,
                    xOffset: 80,
                    xRotation: 20.2,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 140,
            top: 240,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.transparent),
              height: 200,
              width: 300,
              child: ParallaxStack(
                layers: [
                  ParallaxLayer(
                    child: Container(
                      height: 220,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Color(0xff191C2B),
                        borderRadius: BorderRadius.circular(90),
                      ),
                    ),
                    yRotation: 0.35,
                    xOffset: 80,
                    xRotation: 0.6,
                  ),
                  ParallaxLayer(
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color(0xff191C2B),
                        borderRadius: BorderRadius.circular(90),
                      ),
                    ),
                    yRotation: 0.35,
                    xOffset: 80,
                    xRotation: 0.6,
                  ),
                  ParallaxLayer(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff0067a8),
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Center(child: const Text('kokos')),
                        height: 200,
                        width: 200,
                      ),
                    ),
                    yRotation: 1.35,
                    xOffset: 20,
                    xRotation: 1.6,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 160,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Color(0xff191C2B),
              ),
              height: 240,
              width: 220,
              child: ParallaxStack(
                layers: [
                  ParallaxLayer(
                    child: Center(
                      child: Container(
                        height: 220,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xff0067a8),
                          borderRadius: BorderRadius.circular(90),
                        ),
                      ),
                    ),
                    yRotation: 0.35,
                    xOffset: 80,
                    xRotation: 0.6,
                  ),
                  ParallaxLayer(
                    child: Container(
                      child: Center(child: const Text('ananas')),
                      height: 200,
                      width: 200,
                    ),
                    yRotation: 1.35,
                    xOffset: 20,
                    xRotation: 1.6,
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
