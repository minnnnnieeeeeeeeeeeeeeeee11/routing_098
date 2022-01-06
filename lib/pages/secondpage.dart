import 'package:flutter/material.dart';

import 'thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _stdId = TextEditingController();
  TextEditingController _stdName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const Text(
              'เข้าสู่ระบบ',
              style: TextStyle(fontSize: 30),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(bottom: 15)),
                  stdName(),
                  const Padding(padding: EdgeInsets.only(bottom: 5)),
                  stdId()
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            var rout = MaterialPageRoute(
                              builder: (context) => ThirdPage(
                                stdId: _stdId.text,
                                stdName: _stdName.text,
                              ),
                            );
                            Navigator.push(context, rout);
                          }
                        },
                        child: const Text(
                          'ยืนยัน',
                          style: TextStyle(fontSize: 20),
                        )),
                    Padding(padding: EdgeInsets.only(right: 25)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'ย้อนกลับ',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox stdName() {
    return SizedBox(
      height: 80,
      width: 300,
      child: TextFormField(
          controller: _stdName,
          validator: (value) {
            if (value!.isEmpty) {
              return 'กรุณากรอกชื่อนามสกุล';
            }
          },
          decoration: const InputDecoration(
            labelText: 'ชื่อ-นามสกุล',
            prefixIcon: Icon(Icons.person),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.black,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.grey,
                )),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.red,
                )),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.red,
                )),
          )),
    );
  }

  SizedBox stdId() {
    return SizedBox(
      height: 80,
      width: 300,
      child: TextFormField(
        controller: _stdId,
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอกรหัสนิสิต';
          }
        },
        keyboardType: TextInputType.number,
        maxLength: 9,
        decoration: const InputDecoration(
          labelText: 'รหัสนิสิต',
          prefixIcon: Icon(Icons.lock),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                width: 1,
                color: Colors.black,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                width: 1,
                color: Colors.grey,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                width: 1,
                color: Colors.red,
              )),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                width: 1,
                color: Colors.red,
              )),
        ),
      ),
    );
  }
}
