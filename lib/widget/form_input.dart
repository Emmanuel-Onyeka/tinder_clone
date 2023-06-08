import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputForm extends StatelessWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 70,
            width: 65,
            child: TextFormField(
              style: Theme.of(context).textTheme.headlineMedium,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                hintText: '0',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFF377D)),
                ),
              ),
              onChanged: (value) {
                if (value == 1) {
                  FocusNode().nextFocus();
                }
              },
            ),
          ),
          SizedBox(
            height: 70,
            width: 65,
            child: TextFormField(
              style: Theme.of(context).textTheme.headlineMedium,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                hintText: '0',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFF377D)),
                ),
              ),
              onChanged: (value) {
                if (value == 1) {
                  FocusNode().nextFocus();
                }
              },
            ),
          ),
          SizedBox(
            height: 70,
            width: 65,
            child: TextFormField(
              style: Theme.of(context).textTheme.headlineMedium,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                hintText: '0',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFF377D)),
                ),
              ),
              onChanged: (value) {
                if (value == 1) {
                  FocusNode().nextFocus();
                }
              },
            ),
          ),
          SizedBox(
            height: 70,
            width: 65,
            child: TextFormField(
              style: Theme.of(context).textTheme.headlineMedium,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                hintText: '0',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFF377D)),
                ),
              ),
              onChanged: (value) {
                if (value == 1) {
                  FocusNode().nextFocus();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
