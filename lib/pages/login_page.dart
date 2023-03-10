import 'package:catalog/utils/my_routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.asset(
              "assets/images/avtar.jpg",
              fit: BoxFit.cover,
              width: 100.0,
              height: 100.0,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: TextFormField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'Enter username',
                labelText: 'Username',
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'Enter password',
                labelText: 'password',
                suffixIcon: const Icon(Icons.visibility_off),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async{
              setState(() {
                changeButton = true;
              });
              await Future.delayed(const Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.home);
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: 50,
              width: changeButton ? 50 : 140,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                color: Colors.deepPurple,
              ),
              child: changeButton
                  ? const Icon(Icons.done)
                  : const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
            ),
          )
          // ElevatedButton(
          //   onPressed: () {},
          //   child: const Text("Login"),
          // ),
        ],
      ),
    );
  }
}
