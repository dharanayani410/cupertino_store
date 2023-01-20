import 'package:flutter/cupertino.dart';

import 'global.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  TextEditingController nameController = TextEditingController();
  DateTime currentDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Shopping Cart",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: CupertinoColors.black),
                    ),
                    Container(
                      height: 1,
                      color: CupertinoColors.inactiveGray.withOpacity(0.5),
                    )
                  ]),
            ),
          ),
          Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CupertinoTextField(
                        prefix: const Icon(
                          CupertinoIcons.person_solid,
                          color: CupertinoColors.lightBackgroundGray,
                          size: 28,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 12),
                        textCapitalization: TextCapitalization.words,
                        autocorrect: false,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                        ),
                        style: const TextStyle(color: CupertinoColors.black),
                        placeholder: 'Name',
                        onChanged: (newName) {
                          setState(() {});
                        },
                      ),
                      const CupertinoTextField(
                        prefix: Icon(
                          CupertinoIcons.mail_solid,
                          color: CupertinoColors.lightBackgroundGray,
                          size: 28,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                        clearButtonMode: OverlayVisibilityMode.editing,
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                        ),
                        style: TextStyle(color: CupertinoColors.black),
                        placeholder: 'Email',
                      ),
                      const CupertinoTextField(
                        prefix: Icon(
                          CupertinoIcons.location_solid,
                          color: CupertinoColors.lightBackgroundGray,
                          size: 28,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                        textCapitalization: TextCapitalization.words,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 0,
                              color: CupertinoColors.inactiveGray,
                            ),
                          ),
                        ),
                        style: TextStyle(color: CupertinoColors.black),
                        placeholder: 'Location',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const Icon(
                                CupertinoIcons.clock,
                                color: CupertinoColors.lightBackgroundGray,
                                size: 28,
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                'Delivery time',
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              Text(
                                  "${currentDate.day}/${currentDate.month}/${currentDate.year}  ${currentDate.hour}:${currentDate.minute}")
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 150,
                        alignment: Alignment.center,
                        child: CupertinoTheme(
                          data: const CupertinoThemeData(
                              textTheme: CupertinoTextThemeData(
                                  dateTimePickerTextStyle:
                                      TextStyle(color: CupertinoColors.black))),
                          child: CupertinoDatePicker(
                            initialDateTime: currentDate,
                            mode: CupertinoDatePickerMode.dateAndTime,
                            onDateTimeChanged: (DateTime value) {
                              currentDate = value;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                          children: Global.cart
                              .map((e) => SizedBox(
                                    height: 40,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 1,
                                            child: SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Image.asset(
                                                "${e['image']}",
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("${e['title']}"),
                                              Text(
                                                "\$${e['price']}",
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    color: CupertinoColors
                                                        .systemGrey),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Text("\$${e['total']}"))
                                      ],
                                    ),
                                  ))
                              .toList()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Shipping \$21.0",
                            style: TextStyle(
                                fontSize: 15,
                                color: CupertinoColors.systemGrey),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Tax \$10.0",
                            style: TextStyle(
                                fontSize: 15,
                                color: CupertinoColors.systemGrey),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 18,
                                color: CupertinoColors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "\$${Global.finalBill}",
                            style: const TextStyle(
                                fontSize: 18,
                                color: CupertinoColors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ]),
              ))
        ],
      ),
    );
  }
}
