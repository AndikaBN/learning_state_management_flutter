// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class StateToList extends StatefulWidget {
  const StateToList({Key? key}) : super(key: key);

  @override
  State<StateToList> createState() => _StatemToListState();
}

class _StatemToListState extends State<StateToList> {
  int selectedIndex = 0;
  List navigation = ["Home", "History", "Basket", "Settings"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Stack(
        children: [
          IndexedStack(
            index: selectedIndex,
            children: [
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.orange,
              )
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            left: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
              child: Row(
                children: List.generate(navigation.length, (index) {
                  var item = navigation[index];
                  var select = selectedIndex == index;
                  return Expanded(
                    child: InkWell(
                      onTap: () async {
                        selectedIndex = index;
                        setState(() {});
                      },
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: select ? Colors.amber : Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: Text("$item"),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 20,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              width: 80,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
              child: Column(
                children: List.generate(navigation.length, (index) {
                  var item = navigation[index];
                  var select = selectedIndex == index;
                  return Expanded(
                    child: InkWell(
                      onTap: () async {
                        selectedIndex = index;
                        setState(() {});
                      },
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: select ? Colors.amber : Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: Text("$item"),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
