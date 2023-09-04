import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: Text(
          "Fastival App",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed('ganeshji');
          });
        },
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 400,
                width: 400,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage("lib/assets/ganesh1.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('janmasthami');
                  });
                },
                child: Container(
                  height: 400,
                  width: 450,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage("lib/assets/janmashtami1.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('navaratri');
                  });
                },
                child: Container(
                  height: 400,
                  width: 450,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage("lib/assets/navratri1.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('repulic');
                  });
                },
                child: Container(
                  height: 400,
                  width: 450,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage("lib/assets/re-publicday1.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.of(context).pushNamed('mkar');
                  });
                },
                child: Container(
                  height: 400,
                  width: 450,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage("lib/assets/makar_sankranti1.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
