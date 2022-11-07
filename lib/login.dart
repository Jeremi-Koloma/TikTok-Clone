import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/main.dart';

// import 'Views/screens/firstpage_tiktok.dart';
import 'Views/screens/login_screen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Profil',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ))
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                FontAwesomeIcons.user,
                color: Colors.grey,
                size: 100.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Connectez-vous sur à votre Compte',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 250.0,
                height: 50,
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      _openPopup(context);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 248, 63, 63),
                    )),
                    // textColor:Colors.white,
                    child: const Text(
                      "S'inscrire",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext bc) {
        var media = MediaQuery.of(context).size.height;
        return Container(
          // mon Popup raduis
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
          height: MediaQuery.of(context).size.height * .90,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: const Icon(
                              Icons.close,
                            ),
                          ),
                          const Icon(
                            FontAwesomeIcons.circleQuestion,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      const Text(
                        'Sign up for TikTok',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        'Create a profile, follow other accoounts, make your own wideos, and more.',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ButtonTheme(
                        minWidth: 250.0,
                        child: ElevatedButton(
                          onPressed: () => {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            shape: const RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.grey,
                                width: 0.5,
                              ),
                            ),
                            primary: const Color.fromARGB(255, 248, 63, 63),
                          ),
                          child: Container(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LoginScreen();
                                  // return FirstPageTiktok();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: const <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: FaIcon(
                                        FontAwesomeIcons.user,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'Use phone or email',
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      ButtonTheme(
                        minWidth: 250.0,
                        child: ElevatedButton(
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                              ),
                              primary: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: FaIcon(
                                      FontAwesomeIcons.facebook,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      'Continue with Facebook',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      ButtonTheme(
                        minWidth: 250.0,
                        child: ElevatedButton(
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                              ),
                              primary: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: FaIcon(
                                      FontAwesomeIcons.apple,
                                      color: Color.fromARGB(192, 14, 13, 13),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      'Continue with Apple',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      ButtonTheme(
                        minWidth: 250.0,
                        child: ElevatedButton(
                            onPressed: () => {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0.0,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                              ),
                              primary: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: FaIcon(
                                      FontAwesomeIcons.google,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(
                                      'Continue with Google',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: media * .20,
                      ),
                      const Text(
                        'By continuing, you agree to our Termes of Service and acknowledge that you have read our Privacy Policy to learn how we collect, use, and share your data.',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: const Color.fromARGB(255, 233, 232, 229),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Already have an account ? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          FontAwesomeIcons.rightToBracket,
                          size: 20,
                          color: Color.fromARGB(255, 37, 37, 37),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Log in',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
