import 'package:flutter/material.dart';

class ThirstPageTiktok extends StatelessWidget {
  const ThirstPageTiktok({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 25, top: 70),
            child: const Text(
              'Balaie vers le haut',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25),
            child: const Text(
              """
Les vidéos sont personnalisées
selon ce que tu regardes,
aimes et partages
""",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 100, 100, 100)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .10,
          ),
          Center(
            child: Container(
              height: 300.0,
              child: Image.asset('assets/images/phone_image.png'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350.0, 55),
                backgroundColor: Colors.red,
              ),
              onPressed: () {},
              child: const Text(
                'Commencer à regarder',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
