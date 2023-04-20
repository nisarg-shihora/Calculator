import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: calculator(),
  ));
}


// ignore: camel_case_types
class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController calcontroller = TextEditingController();
  String num = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('calculator'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0,
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(child: Container()),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    num,
                    style: TextStyle(
                        fontSize: 60,
                        color: num == '0' ? Colors.grey : Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num == '0')
                                    num = '1';
                                  else
                                    num += '1';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                            SizedBox(width: 10.0),
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num == '0')
                                    num = '2';
                                  else
                                    num += '2';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '2',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                            SizedBox(width: 10.0),
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num == '0')
                                    num = '3';
                                  else
                                    num += '3';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '3',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num == '0')
                                    num = '4';
                                  else
                                    num += '4';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '4',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                            SizedBox(width: 10.0),
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num == '0')
                                    num = '5';
                                  else
                                    num += '5';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '5',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                            SizedBox(width: 10.0),
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num == '0')
                                    num = '6';
                                  else
                                    num += '6';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '6',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num == '0')
                                    num = '7';
                                  else
                                    num += '7';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '7',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                            SizedBox(width: 10.0),
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num == '0')
                                    num = '8';
                                  else
                                    num += '8';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '8',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                            SizedBox(width: 10.0),
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num == '0')
                                    num = '9';
                                  else
                                    num += '9';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '9',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (!num.contains('.')) num += '.';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '.',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                            SizedBox(width: 10.0),
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num == '0')
                                    num = '0';
                                  else
                                    num += '0';
                                });
                              },
                              color: Colors.red,
                              child: Text(
                                '0',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                            SizedBox(width: 10.0),
                            Expanded(
                                child: FlatButton(
                              onPressed: () {
                                setState(() {
                                  if (num.contains('/') ||
                                      num.contains('*') ||
                                      num.contains('-') ||
                                      num.contains('+'))
                                    num = calc();
                                  else
                                    num = num;
                                });
                              },
                              color: Colors.blue,
                              child: Text(
                                '=',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            if (num.length > 2 &&
                                    num.substring(num.length - 3, num.length) ==
                                        ' + ' ||
                                num.substring(num.length - 3, num.length) ==
                                    ' / ' ||
                                num.substring(num.length - 3, num.length) ==
                                    ' * ' ||
                                num.substring(num.length - 3, num.length) ==
                                    ' - ')
                              num = num.substring(0, num.length - 3) + ' / ';
                            else if (num.contains('/') ||
                                num.contains('*') ||
                                num.contains('-') ||
                                num.contains('+'))
                              num = calc() + " / ";
                            else
                              num += ' / ';
                          });
                        },
                        color: Colors.grey,
                        child: Text(
                          '/',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              if (num.length > 2 &&
                                      num.substring(
                                              num.length - 3, num.length) ==
                                          ' + ' ||
                                  num.substring(num.length - 3, num.length) ==
                                      ' / ' ||
                                  num.substring(num.length - 3, num.length) ==
                                      ' * ' ||
                                  num.substring(num.length - 3, num.length) ==
                                      ' - ')
                                num = num.substring(0, num.length - 3) + ' * ';
                              else if (num.contains('/') ||
                                  num.contains('*') ||
                                  num.contains('-') ||
                                  num.contains('+'))
                                num = calc() + " * ";
                              else
                                num += ' * ';
                            });
                          },
                          color: Colors.grey,
                          child: Text(
                            '*',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            if (num.length > 2 &&
                                    num.substring(num.length - 3, num.length) ==
                                        ' + ' ||
                                num.substring(num.length - 3, num.length) ==
                                    ' / ' ||
                                num.substring(num.length - 3, num.length) ==
                                    ' * ' ||
                                num.substring(num.length - 3, num.length) ==
                                    ' - ')
                              num = num.substring(0, num.length - 3) + ' + ';
                            else if (num.contains('/') ||
                                num.contains('*') ||
                                num.contains('-') ||
                                num.contains('+'))
                              num = calc() + ' + ';
                            else
                              num += ' + ';
                          });
                        },
                        color: Colors.grey,
                        child: Text(
                          '+',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            if (num.length > 2 &&
                                    num.substring(num.length - 3, num.length) ==
                                        ' + ' ||
                                num.substring(num.length - 3, num.length) ==
                                    ' / ' ||
                                num.substring(num.length - 3, num.length) ==
                                    ' * ' ||
                                num.substring(num.length - 3, num.length) ==
                                    ' - ')
                              num = num.substring(0, num.length - 3) + ' - ';
                            else if (num.contains('/') ||
                                num.contains('*') ||
                                num.contains('-') ||
                                num.contains('+'))
                              num = calc() + " - ";
                            else
                              num += ' - ';
                          });
                        },
                        color: Colors.grey,
                        child: Text(
                          '-',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  String calc() {
    if (num.contains('+')) {
      List<String> lists = num.split('+');
      double n1 = double.parse(lists[0]);
      double n2 = double.parse(lists[1]);

      double ans = n1 + n2;
      ans.isFinite;
      return ans.toString();
    }
    if (num.contains('-')) {
      List<String> lists = num.split('-');
      double n1 = double.parse(lists[0]);
      double n2 = double.parse(lists[1]);

      double ans = n1 - n2;

      return ans.toString();
    }
    if (num.contains('*')) {
      List<String> lists = num.split('*');
      double n1 = double.parse(lists[0]);
      double n2 = double.parse(lists[1]);

      double ans = n1 * n2;

      return ans.toString();
    }
    if (num.contains('/')) {
      List<String> lists = num.split('/');
      double n1 = double.parse(lists[0]);
      double n2 = double.parse(lists[1]);

      double ans = n1 / n2;
      return ans.toString();
    }
  }
}
