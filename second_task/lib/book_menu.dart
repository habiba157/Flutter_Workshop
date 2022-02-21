import 'package:flutter/material.dart';
class book_menu extends StatelessWidget {
  String book_name;
  book_menu(this.book_name);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 70,
      margin: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.book_outlined,
              color: Colors.black,
              size: 20.0,
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(right: 10.0),
            child: Text(
              book_name,
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 20.0,
            ),
          )

        ],
      ),
    );
  }
}
