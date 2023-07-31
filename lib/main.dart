import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool obsecureText = true;
  String hasil = 'HASIL INPUT';
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Fitur TextField',
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  autocorrect: false,
                  // autofocus: false,
                  // enableSuggestions: true,
                  // enableInteractiveSelection: false,
                  // keyboardType: TextInputType.phone,
                  // readOnly: false,
                  showCursor: true,
                  cursorColor: Colors.red,
                  cursorWidth: 10,
                  cursorHeight: 25,
                  cursorRadius: const Radius.circular(20),
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  textCapitalization: TextCapitalization.none,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                  obscureText: obsecureText,
                  decoration: InputDecoration(
                    icon: const Icon(
                      Icons.person,
                    ),
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    // prefixIcon: Icon(
                    //   Icons.person,
                    // ),
                    // prefixText: "Name : ",
                    // prefix: Icon(
                    //   Icons.person_add,
                    // ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obsecureText = false;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                    hintText: "Please input your name..",
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    labelText: "Full Name",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  controller: myController,
                  onChanged: (value) {
                    print("ONCHANGE");
                  },
                  onEditingComplete: () {
                    print("EDITING COMPLETE");
                  },
                  onSubmitted: (value) {
                    print(value);
                    setState(() {
                      hasil = value;
                    });
                  },
                ),
                Text(hasil),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
