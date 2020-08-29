import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final Function onSaved;
  final Function onChanged;
  final String initialValue;
  final String hintText;
  final bool allowEmpty;
  final bool multiLine;
  final bool obscured;
  final Widget prefixIcon;
  final Widget suffix;

  CustomTextField(
      {@required this.onSaved,
      this.onChanged,
      @required this.hintText,
      this.initialValue,
      this.allowEmpty = true,
      this.multiLine = false,
      this.obscured = false,
      this.prefixIcon,
      this.suffix});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.multiline,
      minLines: 1,
      maxLines: 100,
      validator: (value) {
        if (!allowEmpty && value.trim().isEmpty) {
          return '';
        }
        return null;
      },
      onSaved: onSaved,
      onChanged: onChanged,
      obscureText: obscured,
      decoration: InputDecoration(
        // filled: true,
        // fillColor: Colors.white,
        contentPadding: EdgeInsets.all(8.0),
        prefixIcon: prefixIcon,
        suffixIcon: suffix,
        hintText: hintText,
        labelText: hintText,
        hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
        errorStyle: TextStyle(fontSize: 0, height: 0),
        focusedBorder: OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.grey),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
