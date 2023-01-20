import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController textController = TextEditingController(text: 'shirt');
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      color: CupertinoColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CupertinoSearchTextField(
            suffixMode: OverlayVisibilityMode.always,
            suffixIcon: const Icon(
              CupertinoIcons.clear_circled_solid,
              color: CupertinoColors.systemGrey,
            ),
            controller: textController,
            onChanged: (val) {
              setState(() {
                Global.searchVal = textController.text;
              });
            },
            style: const TextStyle(color: CupertinoColors.black),
            onSubmitted: (val) {
              setState(() {
                Global.searchVal = textController.text;
              });
            },
          ),
          Column(
            children: Global.shirt
                .map((e) => Column(children: [
                      SizedBox(
                        height: 80,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: Image.asset(
                                    "${e['image']}",
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${e['title']}"),
                                  Text(
                                    "\$${e['price']}",
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: CupertinoColors.systemGrey),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: CupertinoButton(
                                  child: const Icon(CupertinoIcons.add_circled),
                                  onPressed: () {}),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: CupertinoColors.inactiveGray.withOpacity(0.5),
                        indent: 70,
                        endIndent: 20,
                      )
                    ]))
                .toList(),
          )
        ],
      ),
    );
  }
}
