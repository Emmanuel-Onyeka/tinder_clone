import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneNumberVerification extends StatefulWidget {
  PageController controller;

  PhoneNumberVerification(this.controller);

  @override
  State<PhoneNumberVerification> createState() =>
      _PhoneNumberVerificationState();
}

class _PhoneNumberVerificationState extends State<PhoneNumberVerification> {
  FocusNode? fn;
  String number = '';

  @override
  void initState() {
    super.initState();
    fn = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    fn!.dispose();
  }

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
              'My number is',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 40,
                  ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      'NG +234',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    focusNode: fn,
                    onChanged: (value) {
                      setState(() {
                        number = value;
                      });
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: const InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                        color: Color(0xFFFF377D),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFF377D),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'When you tap continue, Tinder will send a text with verification code. Message and data rates may apply'
              'The verified Phone number can be used to log in. Learn what happens when your number changes.',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: number.isEmpty
                  ? null
                  : () {
                      fn!.unfocus();
                      widget.controller.animateToPage(
                        1,
                        duration: const Duration(seconds: 1),
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
    );
  }
}
