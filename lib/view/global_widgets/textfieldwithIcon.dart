import 'package:flutter/material.dart';

class TextFieldAndIcon extends StatelessWidget {

  final String? hintText;
  final IconData? iconData;

  const TextFieldAndIcon({Key? key, this.hintText, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.only(top: 20, right: 20, left: 10, bottom: 20),
      // margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius:  const BorderRadius.all(Radius.circular(5))),
      child: Row(
        children:  <Widget>[
          Flexible(
            child: TextField(
              style: const TextStyle(
                  color: Colors.black,
                  // fontFamily: 'Regular',
                  fontSize: 12),
              cursorColor: Colors.black,
              decoration: InputDecoration.collapsed(
                  hintText: hintText ?? 'Search anything',
                  hintStyle:
                  const TextStyle(
                      fontSize: 15,
                      // fontFamily: 'Regular'

                  )),
            ),
          ),
          (iconData!=null) ?
          Icon(iconData) : const SizedBox()
        ],
      ),
    );
  }
}
