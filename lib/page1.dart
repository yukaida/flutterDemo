import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  final List<Widget> picWidgetList = [
    Image.network('https://api.ixiaowai.cn/mcapi/mcapi.php'),
    Image.network('https://api.ixiaowai.cn/mcapi/mcapi.php'),
    Image.network('https://api.ixiaowai.cn/mcapi/mcapi.php')
  ];

  String content = '';
  String textContent = '舔一下';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            shadowColor: Colors.grey,
            child: Image.network('https://api.ixiaowai.cn/api/api.php'),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.network('https://api.ixiaowai.cn/mcapi/mcapi.php'),
          const SizedBox(
            height: 20,
          ),
          Card(
              child:
                  Padding(padding: EdgeInsets.all(20), child: Text(content))),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                if (textContent == '舔一下') {
                  setState(() {
                    textContent = '再舔一下';
                  });
                }

                var url = Uri.parse('https://api.ixiaowai.cn/tgrj/index.php');
                var response = await http.post(url);
                setState(() {
                  content = response.body;
                });
              },
              child: Text(textContent))
        ],
      ),
    );
  }
}
