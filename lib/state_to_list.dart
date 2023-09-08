// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class StatemToList extends StatefulWidget {
  const StatemToList({Key? key}) : super(key: key);

  @override
  State<StatemToList> createState() => _StatemToListState();
}

class _StatemToListState extends State<StatemToList> {
  int selectedIndex = 0;
  List category = ["Action", "Comedy", "School", "Romance"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(category.length, (index) {
                    var item = category[index];
                    var select = selectedIndex == index;
                    return InkWell(
                      onTap: () async {
                        selectedIndex = index;
                        setState(() {});
                      },
                      child: Card(
                        color: select ? Colors.amber : Colors.transparent,
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            '$item',
                            style: TextStyle(
                                color: select ? Colors.black : Colors.white),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListView.builder(
                itemCount: category.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = category[index];
                  var selek = selectedIndex == index;
                  return InkWell(
                    onTap: () async {
                      selectedIndex = index;
                      setState(() {});
                    },
                    child: AnimatedRotation(
                      duration: const Duration(milliseconds: 400),
                      turns: (selek ? 360 : 0) / 360,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.only(
                          bottom: 10.0,
                        ),
                        height: 70,
                        decoration: BoxDecoration(
                          color: selek ? Colors.orange : Colors.black,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$item",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
