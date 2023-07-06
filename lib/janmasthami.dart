import 'package:fastival_app/list.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class janmasthami extends StatefulWidget {
  const janmasthami({super.key});

  @override
  State<janmasthami> createState() => _janmasthamiState();
}

class _janmasthamiState extends State<janmasthami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "janmashtami ",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: quotes
              .map(
                (e) => (e['fastival'] == "janmashtami")
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
