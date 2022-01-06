import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key, this.stdName, this.stdId}) : super(key: key);

  final String? stdName;
  final String? stdId;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const Text(
              'เข้าสู่ระบบสำเร็จ',
              style: TextStyle(fontSize: 30),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 15)),
            Text(
              'ชื่อ-สกุล :' + widget.stdName!,
              style: const TextStyle(fontSize: 20),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            Text(
              'รหัสนิสิต :' + widget.stdId!,
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'กลับ',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
