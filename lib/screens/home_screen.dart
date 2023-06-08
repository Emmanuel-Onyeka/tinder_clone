import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.maxFinite,
          margin: const EdgeInsets.all(5),
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.black,
              ],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              stops: [0, 0.35, 0.75],
            ),
          ),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'images/background.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    'Dora 21',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.verified,
                    color: Colors.blue,
                  ),
                  const Spacer(),
                  const Icon(
                    FontAwesomeIcons.circleUp,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildIconButton(
                    Colors.white,
                    Icons.refresh,
                    7,
                  ),
                  buildIconButton(
                    Colors.red,
                    FontAwesomeIcons.xmark,
                    15,
                  ),
                  buildIconButton(
                    Colors.blue,
                    Icons.star,
                    7,
                  ),
                  buildIconButton(
                    Colors.green,
                    FontAwesomeIcons.solidHeart,
                    15,
                  ),
                  buildIconButton(
                    Colors.purple,
                    FontAwesomeIcons.bolt,
                    7,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Material buildIconButton(Color iconColor, IconData icon, double iconSize) {
    return Material(
      color: Colors.transparent,
      // onPressed: () {},
      shape: CircleBorder(
        side: BorderSide(
          color: iconColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(iconSize),
        child: Icon(
          icon,
          color: iconColor,
          size: 30,
        ),
      ),
    );
  }
}
