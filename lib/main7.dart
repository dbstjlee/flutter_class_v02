import 'package:class_v02/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp7());
}

class MyApp7 extends StatefulWidget {
  const MyApp7({super.key});

  @override
  State<MyApp7> createState() => _MyApp7State();
}

class _MyApp7State extends State<MyApp7> {
  // let 대신 var 사용
  // bool 데이터 타입과 bool?(부울 옵셔널 - 선언 필요) 타입은 다른 것이다.
  bool? _checkBoxValue = true; // true/false로 사용함
  String _radioValue = 'Optioin 1';
  double _sliderValue = 50;
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp7'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0), // 불변(const)
          child: Column(
            children: [
              Center(
                child: Text('$_checkBoxValue'),
              ),
              const SizedBox(height: 16.0), // 밑에 여백
              Checkbox(
                value: _checkBoxValue,
                onChanged: (value) {
                  print('value: $value');
                  setState(() {
                    _checkBoxValue = value;
                  });
                },
              ),
              const SizedBox(height: 16.0), // 사이즈 박스를 static 변수처럼 재사용함.
              Text('Radio Button'),
              Row(
                children: [
                  Radio(
                    value: '축구',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        print('value : $value');
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  Text('축구'),
                  Radio(
                    value: '농구',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        print('value : $value');
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  Text('농구'),
                ],
              ),
              const SizedBox(height: 16.0),
              // Slider 위젯을 사용 1
              Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }),

              const SizedBox(height: 16.0),
              // Switch 위젯을 사용 2
              Switch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
