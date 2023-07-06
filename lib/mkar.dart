import 'package:flutter/material.dart';

import 'global.dart';
import 'list.dart';

class mkar extends StatefulWidget {
  const mkar({super.key});

  @override
  State<mkar> createState() => _mkarState();
}

class _mkarState extends State<mkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Makarsankrati",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: quotes
              .map(
                (e) => (e['fastival'] == "Makarsankranti")
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
