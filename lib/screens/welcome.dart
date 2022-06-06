import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web1/logic/page_provider.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.red, Colors.yellow],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                Provider.of<Controller>(context, listen: false)
                    .control!
                    .animateToPage(1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.linearToEaseOut);
              },
              child: Container(
                child: const Center(child: Text('misiaczek')),
                height: size.height * 0.2,
                width: size.width * 0.2,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(45.0),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 200,
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
                    yRotation: 0.35,
                    xOffset: 80,
                    xRotation: 0.6,
                    child: Center(
                      child: Container(
                        width: 100,
                        height: 100,
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
            Row(
              children: [
                const SizedBox(width: 45),
                Container(
                  child: const Center(child: Text('Elo!')),
                  height: size.height * 0.2,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Row(
                  children: [
                    Container(
                      child: const Center(child: Text('Eloszka na stronie!')),
                      height: size.height * 0.1,
                      width: size.width * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    Container(
                      child: const Center(child: Text('Eloszka na stronie!')),
                      height: size.height * 0.1,
                      width: size.width * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(90.0),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
