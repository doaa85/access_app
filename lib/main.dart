import 'package:flutter/material.dart';
import 'package:stless/secod_screen.dart';

void main() {
  runApp(const Mymaterialapp());
}

class Mymaterialapp extends StatelessWidget {
  const Mymaterialapp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Myfirstscreen(title: 'Flutter Demo Home Page'),
    );
  }
}

class Myfirstscreen extends StatefulWidget {
  const Myfirstscreen({super.key, required this.title});
  final String title;
  @override
  State<Myfirstscreen> createState() => _MyfirstscreenState();
}

class _MyfirstscreenState extends State<Myfirstscreen> {
  final user = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                const Icon(
                  Icons.diamond,
                  weight: 50,
                  size: 60,
                  color: Colors.black,
                ),
                const Text(
                  "SHRINE",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: user,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        hintText: "User name",
                        hintStyle: TextStyle(fontSize: 24, color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: password,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        hintText: "Password ",
                        hintStyle: TextStyle(fontSize: 24, color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                OverflowBar(
                  alignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          user.clear();
                          password.clear();
                          // clear the textfield
                        },
                        child: const Text("CANCEL")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Mysecondscreen(
                                data: "Welcome ${user.text}",
                                passdata: password.text,
                              ),
                            ),
                          );
                        },
                        child: const Text("NEXT"))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
