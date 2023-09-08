import 'package:flutter/material.dart';
import 'package:state_management/state_to_list.dart';
import 'package:state_management/state_to_list2.dart';
import 'package:state_management/state_to_list3.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MenuPage(),
    );
  }
}

class CommonWidgets extends StatefulWidget {
  const CommonWidgets({Key? key}) : super(key: key);

  @override
  State<CommonWidgets> createState() => _CommonWidgetsState();
}

class _CommonWidgetsState extends State<CommonWidgets> {
  bool loading = false;
  bool visible = false;
  bool enable = false;

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () async {
              loading = true;
              setState(() {});
              await Future.delayed(const Duration(seconds: 2));
              loading = false;
              setState(() {});
            },
            child: const Text("Save"),
          ),
        ],
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Expanded(
                    //   child: ListView.builder(
                    //     itemCount: 2,
                    //     physics: const NeverScrollableScrollPhysics(),
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return Card(
                    //         child: ListTile(
                    //           leading: loading
                    //               ? const CircularProgressIndicator()
                    //               : CircleAvatar(
                    //                   backgroundColor: Colors.grey[200],
                    //                   backgroundImage: const NetworkImage(
                    //                     "https://i.ibb.co/QrTHd59/woman.jpg",
                    //                   ),
                    //                 ),
                    //           title: const Text("Jessica Doe"),
                    //           subtitle: const Text("Programmer"),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),

                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "visible = $visible",
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.blueGrey,
                    //   ),
                    //   onPressed: () {
                    //     visible = !visible;
                    //     setState(() {});
                    //   },
                    //   child: const Text("save"),
                    // ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // Card(
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(20.0),
                    //     child: Column(
                    //       children: [
                    //         TextFormField(
                    //           maxLength: 20,
                    //           decoration: const InputDecoration(
                    //             labelText: 'Name',
                    //             labelStyle: TextStyle(
                    //               color: Colors.blueGrey,
                    //             ),
                    //             enabledBorder: UnderlineInputBorder(
                    //               borderSide: BorderSide(
                    //                 color: Colors.blueGrey,
                    //               ),
                    //             ),
                    //             helperText: "What's your name?",
                    //           ),
                    //           onChanged: (value) {
                    //             email = value;
                    //             if (email.isNotEmpty && password.isNotEmpty) {
                    //               visible = true;
                    //             } else {
                    //               visible = false;
                    //             }
                    //             setState(() {});
                    //           },
                    //         ),
                    //         const SizedBox(
                    //           height: 10.0,
                    //         ),
                    //         TextFormField(
                    //           maxLength: 20,
                    //           obscureText: true,
                    //           decoration: const InputDecoration(
                    //             labelText: 'Password',
                    //             labelStyle: TextStyle(
                    //               color: Colors.blueGrey,
                    //             ),
                    //             suffixIcon: Icon(
                    //               Icons.password,
                    //             ),
                    //             enabledBorder: UnderlineInputBorder(
                    //               borderSide: BorderSide(
                    //                 color: Colors.blueGrey,
                    //               ),
                    //             ),
                    //             helperText: 'Enter your password',
                    //           ),
                    //           onChanged: (value) {
                    //             password = value;
                    //             if (email.isNotEmpty && password.isNotEmpty) {
                    //               visible = true;
                    //             } else {
                    //               visible = false;
                    //             }
                    //             setState(() {});
                    //           },
                    //         ),
                    //         const Divider(),
                    //         SizedBox(
                    //           width: MediaQuery.of(context).size.width,
                    //           height: 40,
                    //           child: ElevatedButton(
                    //             style: ElevatedButton.styleFrom(
                    //               backgroundColor:
                    //                   visible ? Colors.orange : Colors.grey,
                    //               shape: ContinuousRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(64.0),
                    //               ),
                    //             ),
                    //             onPressed: () async {
                    //               if (!visible) return;
                    //               await showDialog<void>(
                    //                 context: context,
                    //                 barrierDismissible: true,
                    //                 builder: (BuildContext context) {
                    //                   return AlertDialog(
                    //                     title: const Text('Info'),
                    //                     content: const SingleChildScrollView(
                    //                       child: ListBody(
                    //                         children: <Widget>[
                    //                           Text('Your order was placed!'),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                     actions: <Widget>[
                    //                       ElevatedButton(
                    //                         style: ElevatedButton.styleFrom(
                    //                           backgroundColor: Colors.blueGrey,
                    //                         ),
                    //                         onPressed: () {
                    //                           Navigator.pop(context);
                    //                         },
                    //                         child: const Text("Ok"),
                    //                       ),
                    //                     ],
                    //                   );
                    //                 },
                    //               );
                    //             },
                    //             child: const Text("Save"),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () async {
                        enable = !enable;
                        setState(() {});
                      },
                      child: const Text("selection"),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: enable ? 150 : 100,
                      width: enable ? 150 : 100,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            enable ? 17.0 : 0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),

                    AnimatedRotation(
                      turns: (enable ? 360 : 0) / 360,
                      duration: const Duration(milliseconds: 1000),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 900),
                        height: enable ? 150 : 100,
                        width: enable ? 150 : 100,
                        decoration: BoxDecoration(
                          color: enable
                              ? Colors.redAccent
                              : const Color.fromARGB(255, 144, 219, 147),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              enable ? 17.0 : 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 900),
                      opacity: enable ? 1 : 0,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 900),
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: enable ? Colors.redAccent : Colors.green[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              enable ? 17.0 : 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
