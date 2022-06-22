import 'package:ddialyse/screens/const.dart';
import 'package:flutter/material.dart';

class meals extends StatefulWidget {
  const meals({Key? key}) : super(key: key);

  @override
  _mealsState createState() => _mealsState();
}

class _mealsState extends State<meals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: backgrounddark,
            title: Text("suggestions meals")),
        body: Container(
          padding: EdgeInsets.all(0),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5,
                            color: primary),
                        borderRadius:
                            const BorderRadius
                                    .only(
                                topRight: Radius
                                    .circular(18),
                                bottomRight:
                                    Radius
                                        .circular(
                                            18))),
                    height: 150,
                    margin: const EdgeInsets.only(
                        right: 10, top: 25),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets
                                  .only(
                              top: 7,
                              bottom: 7,
                              left: 25),
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color:
                                        primary,
                                    blurRadius:
                                        0.5,
                                    blurStyle:
                                        BlurStyle
                                            .outer)
                              ],
                              image: const DecorationImage(
                                  fit: BoxFit
                                      .contain,
                                  image: AssetImage(
                                      'asset/m3.jpg')),
                              borderRadius:
                                  BorderRadius
                                      .circular(
                                          8),
                              color: textlight),
                          height: 125,
                          width: 125,
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment
                                  .center,
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                              children: const [
                                Text(
                                  "Quick chicken roast",
                                  style: TextStyle(
                                      fontWeight:
                                          FontWeight
                                              .w500),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment
                                      .center,
                              children: const [
                                Flexible(
                                  child: Text(
                                    "Serve up a golden  roasted chicken  with this simple \none-tray bake recipe.",
                                    textAlign:
                                        TextAlign
                                            .center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
