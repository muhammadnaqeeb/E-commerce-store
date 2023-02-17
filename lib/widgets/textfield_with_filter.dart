import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class TextWithFilter extends StatelessWidget {
  const TextWithFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              hintText: 'Search here',
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: const Padding(
                padding: EdgeInsets.all(15.0),
                child: FaIcon(
                  FontAwesomeIcons.search,
                  size: 20,
                ),
              ),
              suffixIcon: const Icon(
                Icons.mic_rounded,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: Container(
          padding: const EdgeInsets.all(11),
          decoration: BoxDecoration(
              color: tPrimaryColor, borderRadius: BorderRadius.circular(8)),
          child: const Icon(
            Icons.tune,
            color: Colors.white,
          ),
        ))
      ],
    );
  }
}
