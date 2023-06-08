import 'package:flutter/material.dart';

class OnBoarding7 extends StatelessWidget {
  List<String> hobbies = [
    'Reading',
    'Writing',
    'Painting',
    'Drawing',
    'Sculpting',
    'Photography',
    'Cooking',
    'Baking',
    'Knitting',
    'Crocheting',
    'Model making',
    'music',
    'Singing',
    'Dancing',
    'Acting',
    'Martial arts',
    'Yoga',
    'Running',
    'Swimming',
    'Cycling',
    'Hiking',
    'Camping',
    'Astronomy',
    'gaming',
    'Chess',
    'Calligraphy',
    'Meditation',
    'Creative writing',
    'Blogging',
    'Podcasting',
    'tennis',
    'basketball',
    'soccer',
    'Fishing',
    'Boating',
    'Surfing',
    'Skiing',
    'Snowboarding',
    'climbing',
    'Traveling',
    'Beekeeping',
    'Paragliding',
    'Horseback riding',
    'Archery',
    'Coin flipping',
    'Soap making',
    'Pottery making',
    'Film-making',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Let everyone know what you\'re passionate about by adding it to your profile',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 12,
          ),
          // Expanded(
          //   child: GridView.builder(
          //       shrinkWrap: true,
          //       itemCount: hobbies.length,
          //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 3,
          //       ),
          //       itemBuilder: (ctx, index) {
          //         return Chip(
          //           side: const BorderSide(
          //             color: Color(0xFFFF377D),
          //           ),
          //           label: Text(
          //             hobbies[index],
          //             style: Theme.of(context).textTheme.titleSmall,
          //           ),
          //         );
          //       }),
          // ),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 5.0,
                children: hobbies.map((item) {
                  return Chip(
                    side: const BorderSide(
                      color: Color(0xFFFF377D),
                    ),
                    label: Text(
                      item,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
