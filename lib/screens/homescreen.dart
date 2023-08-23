import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/screens/listTiles.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      backgroundColor: Color.fromRGBO(230, 230, 230, 1),
      body: FutureBuilder(
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.1),
                    child: Text(
                      "My Notes",
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.height * 0.06),
                      // TextStyle(
                      //     fontSize: MediaQuery.of(context).size.height * 0.05,
                      //     fontWeight: FontWeight.w400,
                      //     color: const Color.fromRGBO(64, 64, 64, 1)),
                    ),
                  ),
                  Container(
                    color: const Color.fromRGBO(230, 230, 230, 1),
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.dehaze_outlined,
                              color: Color.fromRGBO(64, 64, 64, 1),
                            ),
                            Spacer(),
                            Icon(
                              Icons.search,
                              color: Color.fromRGBO(64, 64, 64, 1),
                            ),
                            Icon(Icons.more_vert)
                            // ListTile(
                            //   leading: IconButton(
                            //       onPressed: () {}, icon: Icon(Icons.search)),
                            // )
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("TODAY",
                                  style: GoogleFonts.poppins(
                                      fontSize: Checkbox.width)),
                              const Spacer(),
                              GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    "view all",
                                    style: TextStyle(
                                        color: Color.fromRGBO(64, 64, 64, 1)),
                                  )),
                            ]),
                      ],
                    ),
                  ),
                  liststack(text: ""),
                  liststack(
                    text: "",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("DATE",
                              style: GoogleFonts.poppins(
                                  fontSize: Checkbox.width)),
                          const Spacer(),
                          GestureDetector(
                              onTap: () {},
                              child: Text(
                                "view all",
                                style: TextStyle(
                                    color: Color.fromRGBO(64, 64, 64, 1)),
                              )),
                        ]),
                  ),
                  liststack(
                    text: "",
                  ),
                  liststack(
                    text: "",
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
