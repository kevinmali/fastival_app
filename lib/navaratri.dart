import 'package:flutter/material.dart';

import 'global.dart';
import 'list.dart';

class navaratri extends StatefulWidget {
  const navaratri({super.key});

  @override
  State<navaratri> createState() => _navaratriState();
}

class _navaratriState extends State<navaratri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Navratri",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: quotes
              .map(
                (e) => (e['fastival'] == "Navratri")
                    ? GestureDetector(
                        onTap: () {
                          Quotes q = Quotes(
                            quote: e['quote'],
                            author: e['author'],
                            fastivaL: e['fastival'],
                          );
                          Navigator.of(context)
                              .pushNamed("detils_page", arguments: q);
                        },
                        child: Container(
                          height: 150,
                          width: 400,
                          margin: EdgeInsets.all(10),
                          color: Global.mycolor,
                          child: Center(
                            child: Text(
                              e['quote'],
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                              // style: GoogleFonts.getFont (Global.myfontfamily).merge(TextStyle(color: Global.fontcolor)),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              )
              .toList(),
        ),
      ),
    );
  }
}
