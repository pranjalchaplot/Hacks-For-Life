import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeText {
  static final headline = _headline.copyWith(
    fontSize: 32,
  );

  static const _headline = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.italic,
  );
}
