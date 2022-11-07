import 'package:flutter/material.dart';
import 'package:tiktok/Views/widgets/text_input_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _usernameController = TextEditingController();
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to TikTok ! ',
              style: TextStyle(
                fontSize: 35,
                color: Colors.red,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                      'https://bootdey.com/img/Content/avatar/avatar1.png'),
                  backgroundColor: Colors.black,
                ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: () {
                      print('pick image');
                    },
                    icon: Icon(Icons.add_a_photo),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _usernameController,
                labelText: 'Username',
                icon: Icons.person,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailController,
                labelText: 'Email',
                icon: Icons.email,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _passwordController,
                labelText: 'Password*',
                icon: Icons.lock,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () {
                  print(' register work');
                },
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account ?',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('navigating user');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
