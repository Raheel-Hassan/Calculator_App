import 'package:calculator_aap/components/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userinput = '';
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        child: Container(
          decoration: BoxDecoration(
            border: const Border(
              left: BorderSide(
                color: Colors.white,
                width: 1,
              ),
              right: BorderSide(
                color: Colors.white,
                width: 1,
              ),
              top: BorderSide(
                color: Colors.white,
                width: 1,
              ),
              bottom: BorderSide(
                color: Colors.white,
                width: 1,
              ),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'CALCULATOR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 600,
                          decoration: BoxDecoration(
                            border: const Border(
                              left: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              right: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              top: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),

                            // color: Colors.orange.shade300,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              userinput.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 600,
                          decoration: BoxDecoration(
                            border: const Border(
                              left: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              right: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              top: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),

                            // color: Colors.orange.shade300,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              result.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Mybutton(
                              title: 'AC',
                              onPress: () {
                                userinput = '';
                                result = '';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              title: '+/-',
                              onPress: () {
                                userinput += '+/-';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              title: '%',
                              onPress: () {
                                userinput += '%';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              color: Colors.orange,
                              title: '/',
                              onPress: () {
                                userinput += '/';
                                setState(() {});
                              },
                            ),
                          ],
                        ),

                        //-----------------------------------------
                        Row(
                          children: [
                            Mybutton(
                              title: '7',
                              onPress: () {
                                userinput += '7';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              title: '8',
                              onPress: () {
                                userinput += '8';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              title: '9',
                              onPress: () {
                                userinput += '9';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              color: Colors.orange,
                              title: '*',
                              onPress: () {
                                userinput += '*';
                                setState(() {});
                              },
                            ),
                          ],
                        ),

                        //-----------------------------------------
                        Row(
                          children: [
                            Mybutton(
                              title: '4',
                              onPress: () {
                                userinput += '4';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              title: '5',
                              onPress: () {
                                userinput += '5';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              title: '6',
                              onPress: () {
                                userinput += '6';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              color: Colors.orange,
                              title: '-',
                              onPress: () {
                                userinput += '-';
                                setState(() {});
                              },
                            ),
                          ],
                        ),

                        //-----------------------------------------
                        Row(
                          children: [
                            Mybutton(
                              title: '1',
                              onPress: () {
                                userinput += '1';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              title: '2',
                              onPress: () {
                                userinput += '2';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              title: '3',
                              onPress: () {
                                userinput += '3';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              color: Colors.orange,
                              title: '+',
                              onPress: () {
                                userinput += '+';
                                setState(() {});
                              },
                            ),
                          ],
                        ),

                        //-----------------------------------------
                        Row(
                          children: [
                            Mybutton(
                              title: '0',
                              onPress: () {
                                userinput += '0';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              title: '.',
                              onPress: () {
                                userinput += '.';
                                setState(() {});
                              },
                            ),
                            Mybutton(
                              title: 'DEL',
                              onPress: () {
                                userinput = userinput.substring(
                                    0, userinput.length - 1);

                                setState(() {});
                              },
                            ),
                            Mybutton(
                              color: Colors.orange,
                              title: '=',
                              onPress: () {
                                equalpress();
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void equalpress() {
    ExpressionParser p = GrammarParser();

    Expression expression = p.parse(userinput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
  }
}
