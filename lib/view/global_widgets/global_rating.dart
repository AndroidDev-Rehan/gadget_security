import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class RatingBar extends StatefulWidget {
  final double value ;
  final double count ;
  final double? size ;
  final VoidCallback onPressed;
  const RatingBar({required this.value,required this.count,required this.onPressed,this.size,Key? key}) : super(key: key);

  @override
  _RatingBarState createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap:widget.onPressed,
      child: RatingStars(
        starCount: 5,
        value: widget.count == 0 ? 5 : widget.value/widget.count,
        starSize: widget.size ?? 10,
        starColor: Colors.blue,
        starSpacing: 0,
        maxValueVisibility: false,
        valueLabelVisibility: false,
      ),
    );
  }
}
