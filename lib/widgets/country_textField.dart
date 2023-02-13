import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CountryTextField extends StatelessWidget {
  final String label;

  final Icon icon;
  final TextEditingController controller;

  const CountryTextField({
    Key? key,
    required this.label,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
      initialCountryCode: 'PK',
      controller: controller,
      disableLengthCheck: true,
      onCountryChanged: (country) {
        print('Country changed to: ' + country.name);
      },
      // onChanged: (phone) {
      //   print(phone.completeNumber);
      // },
    );
  }
}
