import 'package:flutter/material.dart';

void main() {
  runApp(MyApp12());
}

class MyApp12 extends StatelessWidget {
  const MyApp12({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // ListView 안에 스크롤 뷰가 들어가 있다.
        body: ListView.separated(
          // 물리적인 스크롤 방식
          physics: ClampingScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text(index.toString()),
              ),
              title: Text('Item $index'),
              subtitle: Text('subItem $index'),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              indent: 20.0,
              endIndent: 20.0,
            );
          },
        ),
      ),
    );
  }
}
