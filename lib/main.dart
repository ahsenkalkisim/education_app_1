import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://pixelplex.io/wp-content/uploads/2023/01/metaverse-in-education-main-1600.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          child: Center(
            child: Card(
              margin: const EdgeInsets.all(
                  16.0), //margin kenar boslukları //edgeınsets.all bütün kenarlaran boslukları
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/tobeto-logo.png',
                      fit: BoxFit.cover,
                      width: 200,
                    ),
                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: const Icon(Icons.person),
                              hintText: 'Kullanıcı Kodu',
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: const Icon(Icons.lock),
                              hintText: 'Parola',
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_off)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 280,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff9B33FF),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)))),
                        child: const Text(
                          'GİRİŞ YAP',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1.0,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Parolamı Unuttum'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
