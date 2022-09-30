import 'package:brutalist/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WalletScreen extends StatefulWidget {
  static const String routeName = '/wallet';
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    final double total_savings = 25301.67;
    double top = 0.0;

    return Scaffold(
      bottomNavigationBar: BottomNavbar(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 392,
            pinned: true,
            backgroundColor: Colors.black,
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    size: 24,
                  )),
            ],
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                top = constraints.biggest.height;
                return FlexibleSpaceBar(
                  titlePadding: top > 200
                      ? EdgeInsets.zero
                      : const EdgeInsets.only(left: 50, bottom: 15),
                  title: top <= 200
                      ? const Text(
                          'Total savings',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (top > 360)
                                Stack(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/fancy_circle.svg',
                                      semanticsLabel: 'Brutalist Logo',
                                      width: 40,
                                      height: 22,
                                    ),
                                    const Text(
                                      "Total savings",
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                              const SizedBox(
                                height: 10,
                              ),
                              if (top > 370)
                                RichText(
                                    text: TextSpan(children: [
                                  WidgetSpan(
                                    child: Transform.translate(
                                      offset: const Offset(0.0, -20.0),
                                      child: const Text(
                                        "£",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        total_savings.toString().split(".")[0],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 57,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        ".${total_savings.toString().split(".")[1]}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ])),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 4,
                                width: double.infinity,
                                child: Stack(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1.0),
                                      color: Color.fromRGBO(220, 220, 220, 1),
                                    ),
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 60 / 100,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "55%",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.red),
                                  ),
                                  Text("Target £50,000%",
                                      style: TextStyle(fontSize: 11)),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(
                                        side: BorderSide(
                                            color: Colors.red, width: 1),
                                      ),
                                      padding: const EdgeInsets.all(10),
                                      primary: Colors
                                          .transparent, // <-- Button color
                                      onPrimary:
                                          Colors.white, // <-- Splash color
                                    ),
                                    child: const Icon(Icons.add),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                  // background: Image.network(
                  //   "https://images.unsplash.com/photo-1542601098-3adb3baeb1ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5bb9a9747954cdd6eabe54e3688a407e&auto=format&fit=crop&w=500&q=60",
                  //   fit: BoxFit.cover,
                  // )
                );
              },
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 1000,
            ),
          ]))
        ],
      ),
    );
  }
}
