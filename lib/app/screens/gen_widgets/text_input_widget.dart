import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    Key? key,
    required this.inputTitle,
    this.isMoney = false,
  }) : super(key: key);
  final String inputTitle;
  final bool isMoney;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2.5),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                inputTitle,
                style: kDefaultTextStyle.copyWith(fontSize: 12),
              ),
            ),
            Container(
              height: 20,
              decoration: BoxDecoration(
                color: kTextColor.withOpacity(0.15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      cursorColor: kTextColor,
                      maxLines: 1,
                      decoration: const InputDecoration(
                        isCollapsed: true,
                        border: InputBorder.none,
                        // suffix: const Text('Kz'),
                        // suffixStyle: kDefaultTextStyle.copyWith(fontSize: 12),
                      ),
                    ),
                  ),
                  if (isMoney) const Text('Kz')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
