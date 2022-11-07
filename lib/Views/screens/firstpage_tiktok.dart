import 'package:flutter/material.dart';

class FirstPageTiktok extends StatelessWidget {
  const FirstPageTiktok({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 25, top: 50),
            child: Text(
              """
Vidéos pour
passer
une bonne
Journée
""",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.40,
            // color: Colors.amber,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: const [
                  Image(
                    image: AssetImage("assets/images/logob.png"),
                    width: 130,
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
