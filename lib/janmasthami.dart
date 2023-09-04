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
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            // childAspectRatio: 3 / 2,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext ctx, index) {
            return GestureDetector(
              onTap: () {
                Quotes q = Quotes(
                  quote: quotes[index + 10]["quote"],
                  author: quotes[index + 10]["author"],
                  fastivaL: quotes[index + 10]["fastival"],
                );
                Navigator.of(context).pushNamed("detils_page", arguments: q);
              },
              child: Container(
                height: 150,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Text("${quotes[index + 10]["quote"]}"),
              ),
            );
          }),
    );
  }
}
