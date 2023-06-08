import 'package:flutter/material.dart';
import './form_input.dart';
import '../screens/intro_screen.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'My code is',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 40,
                  ),
            ),
            Row(
              children: [
                Text(
                  '08103058520',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  width: 7,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'RESEND',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                )
              ],
            ),
            InputForm(),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(OnBoardingScreen.routeName);
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
    );
  }
}
