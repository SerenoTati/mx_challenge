import 'package:flutter/material.dart';
import 'package:mx_challenge/app/constants.dart';

class CustomSelectWidget extends StatelessWidget {
  const CustomSelectWidget({
    Key? key,
    required this.sectors,
    required this.selectorTitle,
    this.isEnabled = true,
  }) : super(key: key);
  final bool isEnabled;
  final List<String> sectors;
  final String selectorTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            selectorTitle,
            style: kDefaultTextStyle,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: kTextColor.withOpacity(0.15),
          ),
          child: DropdownButtonFormField(
            // dropdownColor: Colors.red,

            value: sectors[0],
            decoration: const InputDecoration(
              border: InputBorder.none,
              isCollapsed: true,
              contentPadding: EdgeInsets.all(2),
              // enabled: false,
            ),
            alignment: Alignment.centerLeft,
            items: sectors
                .map((e) => DropdownMenuItem<String>(
                      alignment: Alignment.centerLeft,
                      value: e,
                      enabled: isEnabled,
                      child: Text(
                        e,
                        style: isEnabled
                            ? kDefaultTextStyle.copyWith(color: Colors.black)
                            : kDefaultTextStyle.copyWith(
                                color: kTextColor.withOpacity(0.5)),
                      ),
                    ))
                .toList(),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
