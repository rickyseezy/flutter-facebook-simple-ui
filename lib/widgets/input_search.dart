import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            fillColor: Colors.grey.withOpacity(0.09),
            filled: true,
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(),
            ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(width: 0.8),
          )
        ),
        style: TextStyle(fontSize: 15.0, height: 1.0),
      ),
    );
  }
}
