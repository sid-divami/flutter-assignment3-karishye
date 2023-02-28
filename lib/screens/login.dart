import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/customers.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/temple.png"),
              alignment: Alignment.bottomCenter,
            ),
          ),
          child: Center(
              child: Column(
            children: <Widget>[
              const SizedBox(
                height: 220,
              ),
              const Text(
                "Sign In",
                style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 32)),
              ),
              const Text(
                "Sign in to access all the important puja material and puja sessions.",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
              ),
              const Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                    decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  labelText: 'Mobile No',
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                  right: 20,
                  bottom: 10,
                ),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(235, 103, 46, 114)),
                    minimumSize:
                        MaterialStatePropertyAll<Size>(Size.fromHeight(50)),
                  ),
                  child: const Text(
                    'SUBMIT',
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Customer()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                  right: 20,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Don't have an account? ",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                    Text("SIGN UP",
                        style: TextStyle(
                          color: Color.fromARGB(255, 252, 112, 6),
                          fontSize: 15,
                        ))
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
