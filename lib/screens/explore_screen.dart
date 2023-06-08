import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  List<String> imagePath = [
    'images/cb1.jpg',
    'images/cb5.jpg',
    'images/cb6.jpg',
    'images/cb7.jpg',
    'images/cb8.jpg',
    'images/cb9.jpg',
  ];

  List<String> userLikes = [
    'Date Night',
    'Binge Watchers',
    'creatives',
    'sporty',
    'Music Lovers',
    'Foodies'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 230,
                  width: double.infinity,
                  foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black,
                        ],
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        stops: [
                          0.0,
                          0.90,
                        ]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Image(
                    image: AssetImage('images/verification.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 7,
                  child: Text(
                    'Get Verified on Tinder',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white),
                  ),
                ),
                Positioned(
                  right: 7,
                  bottom: 7,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    child: Text(
                      'TRY NOW',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Welcome to Explore',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black,
                  ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'My vibes',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 10,
            ),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 7,
                crossAxisSpacing: 7,
                childAspectRatio: 2 / 3,
              ),
              children: [
                buildContainer(
                  label: 'Looking \n for Love',
                  imagePath: 'images/cb4.jpg',
                ),
                buildContainer(
                  label: 'Free tonight',
                  imagePath: 'images/cb2.jpg',
                ),
                buildContainer(
                  label: 'Let\'s be friends',
                  imagePath: 'images/cb10.jpg',
                ),
                buildContainer(
                  label: 'Coffee date',
                  imagePath: 'images/cb3.jpg',
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              'For You',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.black,
                  ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Recommendations based on your profile',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: userLikes.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 7,
                crossAxisSpacing: 7,
                childAspectRatio: 2 / 3,
              ),
              itemBuilder: (ctx, index) {
                return buildContainer(
                  label: userLikes[index],
                  imagePath: imagePath[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer({required String label, required String imagePath}) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black,
            ],
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            stops: [
              0.0,
              0.95,
            ]),
        borderRadius: BorderRadius.circular(10),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
