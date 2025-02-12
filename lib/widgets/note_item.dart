import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.date,
    required this.descrip,
    required this.title,
    required this.color,
  });
  final String title, descrip, date;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      // height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              title,
              style: const TextStyle(
                // fontFamily: 'Poppins',
                fontSize: 26,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                descrip,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 37,
              ),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 23.0),
            child: Text(
              date,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
