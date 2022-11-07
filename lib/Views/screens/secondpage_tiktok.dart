import 'package:flutter/material.dart';

class SecondPageTiktok extends StatelessWidget {
  const SecondPageTiktok({super.key});

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
Choisis tes
centres
d'intérêt
""",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.31,
            // color: Colors.amber,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25),
            child: const Text(
              'Obtiens de meilleures recommandations',
              style: TextStyle(
                fontSize: 21,
              ),
            ),
          ),
          const SizedBox(
            height: 56,
          ),
          Container(
            padding: const EdgeInsets.only(left: 3),
            child: const ListTile(
              leading: Icon(Icons.sports_esports_sharp),
              minLeadingWidth: 2,
              title: Text(
                'Sport',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 0.6),
                          color: Colors.white,
                        ),
                        height: 43,
                        width: 120.0,
                        child: const Center(
                          child: Text(
                            'Basketball',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 0.6),
                          color: Colors.white,
                        ),
                        height: 43,
                        width: 85.0,
                        child: const Center(
                          child: Text(
                            'NFL',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 0.6),
                          color: Colors.white,
                        ),
                        height: 43,
                        width: 120.0,
                        child: const Center(
                          child: Text(
                            'Baseball',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 0.6),
                          color: Colors.white,
                        ),
                        height: 43,
                        width: 85.0,
                        child: const Center(
                          child: Text(
                            'Boxing',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 0.6),
                          color: Colors.white,
                        ),
                        height: 43,
                        width: 150.0,
                        child: const Center(
                          child: Text(
                            'Fantasy sport',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 0.6),
                          color: Colors.white,
                        ),
                        height: 43,
                        width: 95.0,
                        child: const Center(
                          child: Text(
                            'FIT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 0.6),
                          color: Colors.white,
                        ),
                        height: 43,
                        width: 150.0,
                        child: const Center(
                          child: Text(
                            'Emirate Game',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 0.6),
                          color: Colors.white,
                        ),
                        height: 43,
                        width: 110.0,
                        child: const Center(
                          child: Text(
                            'Musique',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 0.6),
                          color: Colors.white,
                        ),
                        height: 43,
                        width: 85.0,
                        child: const Center(
                          child: Text(
                            'BOX',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
          ),
          Expanded(
            child: Container(
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.grey, width: 1),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Ignorer',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: const Color.fromARGB(88, 228, 222, 222)
                          .withOpacity(0.2),
                    ),
                    child: const Text(
                      'Suivant',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 119, 117, 117),
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
