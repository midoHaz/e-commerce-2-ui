import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController? controller,
  Function? onsubmit,
  Function? onchange,
  required TextInputType? type,
  required String label,
  required Function? valid,
  bool secure=false,
}) =>
    TextFormField(
      obscureText: secure,
      validator: (value) {
        return valid!(value);
      },
      controller: controller,
      onFieldSubmitted: (value) {
        onsubmit!(value);
      },
      onChanged: (value) {
        onchange!(value);
      },
      keyboardType: type,
      decoration: InputDecoration(
        labelText: label,
      ),
    );

Widget defaultButton({
  double? width = double.infinity,
  Color? background = Colors.green,
  Function? function,
  String? text,
  bool isUpper = true,
  double radius = 10.0,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      width: width,
      child: MaterialButton(
        onPressed: () {
          function!();
        },
        child: Text(
          isUpper ? text!.toUpperCase() : text!,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );

Widget SocialButton({
  double? radius,
  required Color? color,
  required String? pathImage,
  required String? text,
}) =>
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
        backgroundColor: color, // background color
      ),
      child: Row(
        children: [
          Image.asset(
            pathImage!,
            width: 35,
            height: 35,
          ),
          const SizedBox(
            width: 45,
          ),
          Text(
            text!,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
Widget PhotoShadowStyle()=>Container(
  decoration: BoxDecoration(
      gradient: LinearGradient(
          colors: [
            const Color(0xFF343434).withOpacity(
                0.5),
            const Color(0xFF343434).withOpacity(
                0.17),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter)),
);