import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // TextEditingController로 TextField의 controller에 넣을 객체를 선언
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('로그인'),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // FlutterLogo(
                //   size: 100.0,
                // ),
                Image.asset(
                  'assets/images/c.png',
                  width: 150,
                  height: 150,
                ),
                // Image.network(
                //   'https://picsum.photos/300/300',
                //   width: 200,
                //   height: 200,
                // ),
                const SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    labelText: '이메일',
                    labelStyle: TextStyle(color: Colors.brown),
                    filled: true,
                    fillColor: Color(0xFFFFDAB9),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(width: 2, color: Colors.brown),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(width: 1, color: Colors.brown),
                    ),
                    prefixIcon: Icon(Icons.mail),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                    hintText: '',
                    labelStyle: TextStyle(color: Colors.brown),
                    // hintStyle: TextStyle(color: Colors.brown),
                    filled: true,
                    fillColor: Color(0xFFFFDAB9),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(width: 2, color: Colors.brown),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(width: 1, color: Colors.brown),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    // suffixIcon: Icon(Icons.clear),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.search,
                  obscureText: true,
                  // TextEditingController 객체를 controller에 설정
                  controller: _emailController,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // TextEditingController 객체의 text 속성으로 TextField의 입력된
                    // 문자열을 가져올 수 있음
                    print(_emailController.text);
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                  child: Text(
                    '로그인',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // TextEditingController 객체의 text 속성으로 TextField의 입력된
                    // 문자열을 가져올 수 있음
                    print(_emailController.text);
                  },
                  child: Text(
                    '비밀번호를 잊으셨나요?',
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '계정이 없으신가요?',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '회원가입',
                        style: TextStyle(
                            color: Colors.brown, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Divider(
                  color: Color(0xFFE0AC69),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFDAB9),
                  ),
                  icon: Icon(
                    Icons.login,
                    color: Colors.brown,
                  ),
                  label: Text(
                    'Google로 로그인',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
