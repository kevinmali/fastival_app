import 'package:fastival_app/global.dart';
import 'package:flutter/material.dart';

import 'list.dart';

class ganeshji extends StatefulWidget {
  const ganeshji({super.key});

  @override
  State<ganeshji> createState() => _ganeshjiState();
}

class _ganeshjiState extends State<ganeshji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Ganesh God",
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
                (e) => (e['fastival'] == "Ganeshchaturthi")
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
