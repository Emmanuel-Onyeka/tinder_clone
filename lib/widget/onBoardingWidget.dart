import 'package:flutter/material.dart';

class OnBoardingWidget extends StatelessWidget {
  OnBoardingWidget({
    super.key,
    required this.title,
    required this.child,
    this.showPacer = true,
    required this.controller,
  });

  final String title;
  Widget child;
  bool showPacer;
  PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                controller.previousPage(
                  duration: Duration(milliseconds: 600),
                  curve: Curves.easeIn,
                );
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 45,
              ),
              color: Colors.black54,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                      ),
                ),
                if (showPacer) const Spacer(),
                child,
                const SizedBox(
                  height: 20,
                ),
                if (showPacer) const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    controller.nextPage(
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.easeIn,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    backgroundColor: const Color(0xFFFF377D),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('CONTINUE'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
