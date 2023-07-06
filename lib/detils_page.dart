import 'package:fastival_app/global.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'list.dart';

class detiles extends StatefulWidget {
  @override
  State<detiles> createState() => _detilesState();
}

class _detilesState extends State<detiles> {
  @override
  Widget build(BuildContext context) {
    Quotes data = ModalRoute.of(context)!.settings.arguments as Quotes;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Detils of Fastival",
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                Global.mycolor = Colors.grey;
                Global.fontcolor = Colors.black;
                Global.myfontfamily = 'Roboto';
                Global.backgroundimage = '';
              });
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Global.mycolor,
                image: DecorationImage(
                    image: AssetImage(Global.backgroundimage),
                    fit: BoxFit.fill)),
            child: Center(
              child: Text(
                data.quote,
                style: GoogleFonts.getFont(Global.myfontfamily, fontSize: 30)
                    .merge(
                  TextStyle(color: Global.fontcolor),
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.black,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: fontFamilyList
                    .map((e) => GestureDetector(
                          onTap: () {
                            setState(() {
                              Global.myfontfamily = e;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              e,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.black,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Colors.primaries
                    .map((e) => GestureDetector(
                          onTap: () {
                            setState(() {
                              Global.mycolor = e;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(3),
                            height: 45,
                            width: 50,
                            color: e,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.black,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Colors.primaries
                      .map((e) => GestureDetector(
                            onTap: () {
                              setState(() {
                                Global.fontcolor = e;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.all(3),
                              height: 45,
                              width: 50,
                              color: e,
                            ),
                          ))
                      .toList(),
                )),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.black,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: imagelist
                      .map(
                        (e) => (e['fastival'] == data.fastivaL)
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Global.backgroundimage = e['img'];
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(e['img']),
                                    fit: BoxFit.cover,
                                  )),
                                ),
                              )
                            : Container(),
                      )
                      .toList(),
                )),
          ),
        ],
      ),
    );
  }
}
