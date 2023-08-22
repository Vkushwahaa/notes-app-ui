import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class liststack extends StatefulWidget {
  String formatTimestamp(DateTime dateTime) {
    return 'Timestamp: ${dateTime.toString()}';
  }

  // late String? text;
  // liststack({Key? key, required this.text}) : super(key: key);

  @override
  State<liststack> createState() => _listState();
}

class _listState extends State<liststack> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            // side: BorderSide(width: 5)
          ),
          leading: Icon(
            Icons.circle_rounded,
            size: MediaQuery.of(context).size.height * 0.02,
          ),
          title: Text(
            "my engeening",
            style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.height * 0.03),
          ),
          // subtitle:
          //   Text(
          //   "in addition it contains too much information",
          //   style: TextStyle(color: Color.fromRGBO(158, 158, 158, 1)),
          // ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "in addition it contains too much information",
                style: GoogleFonts.poppins(
                    fontSize: Checkbox.width,
                    color: const Color.fromRGBO(2159, 159, 159, 1)),
              ),
              Text('12:00')
            ],
          ),
          tileColor: const Color.fromRGBO(248, 248, 248, 1),
          trailing: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: const Icon(Icons.delete)),
          )),
    );
  }
}
