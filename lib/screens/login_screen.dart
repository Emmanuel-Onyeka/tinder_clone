import 'package:flutter/material.dart';
import './number_v_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/login_screen';

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFFFF7166),
            Color(0xFFFF377D),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
        )),
        child: Column(
          children: [
            SizedBox(
              height: deviceData.size.height * 0.55,
              child: Center(
                child: Image.asset(
                  height: 100.0,
                  'images/tinder.png',
                ),
              ),
            ),
            SizedBox(
              height: deviceData.size.height * 0.45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'By clicking Log in, you agree with our Terms,'
                    ' Learn how we process your data in our Privacy Policy and Cookies Policy',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  buildLoginContainer(
                    ctx: context,
                    image: Image.asset('images/OIP.jpg'),
                    label: 'LOG IN WITH GOOGLE',
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  buildLoginContainer(
                    ctx: context,
                    image: Image.asset('images/fb.jpg'),
                    label: 'LOG IN WITH FACEBOOK',
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  buildLoginContainer(
                    ctx: context,
                    image: const Icon(
                      Icons.phone,
                      color: Colors.black54,
                    ),
                    label: 'LOG IN WITH PHONE NUMBER',
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: TextButton(
                      child: const Text(
                        'Trouble logging in?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell buildLoginContainer({
    required String label,
    required Widget image,
    required BuildContext ctx,
  }) {
    return InkWell(
      onTap: () {
        Navigator.of(ctx).pushNamed(NumVerifyScreen.routeName);
      },
      child: Container(
        padding: const EdgeInsets.all(5.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Padding(
                  //TODO: Adjust the padding to suit the layout
                  padding: const EdgeInsets.all(10.0),
                  child: image,
                ),
              ),
            ),
            Expanded(
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
