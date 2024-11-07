import 'package:class_v02/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp6());
}

//  동적
// class 2 개 필요
// stful로 형성
class MyApp6 extends StatefulWidget {
  const MyApp6({super.key});

  @override
  State<MyApp6> createState() => _MyApp6State();
} // end of MyApp6

// _(언더바)는 private을 의미한다. --> dart public, private만 사용
class _MyApp6State extends State<MyApp6> {
  // 멤버 변수
  int _count = 0;

  // private 변수가 되서 밖에서 사용하려면 getter가 필요함.
  // alt + insert --> Getter 선택
  int get count => _count;

  @override
  void initState() {
    super.initState();
    // 객체가 메모리에 올라 올 때 단 한번만 수행 시키는 메서드
    print('initState() 메서드 호출');
  }

  // 멤버 메서드
  @override
  Widget build(BuildContext context) {
    
    // 지역 변수 
    print('build() 메서드 호출');

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // 렌더링(setState)(= 화면 갱신)
              setState(() {
              _count++;
              print('_count : $_count');
              });
            },
            child: Text('$_count'), // 변수 선언, .연산자 사용 시 중괄호 필요
          ),
        ),
      ),
    );
  }
}

