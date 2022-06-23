import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Page0 extends StatefulWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  State<Page0> createState() => _Page0State();
}

class _Page0State extends State<Page0> {
  List<String> picList = [
    "https://tvax3.sinaimg.cn/large/005BYqpgly1g1ut4tnhtwj31c00u0dks.jpg",
    "https://tvax1.sinaimg.cn/large/005BYqpgly1g1uq1fat03j31hc0u00wc.jpg",
    "https://tvax3.sinaimg.cn/large/005BYqpgly1g1ut3xa5dkj31hc0u0acv.jpg",
    "https://tvax4.sinaimg.cn/large/005BYqpgly1g1usrlmzn8j31c00u0k6n.jpg",
    "https://tvax4.sinaimg.cn/large/005BYqpgly1g1utbdmvl8j31hc0u0jv6.jpg",
    "https://tvax2.sinaimg.cn/large/005BYqpgly1g1urangw2pj31c00u00xg.jpg",
    "https://tvax3.sinaimg.cn/large/005BYqpgly1g1urv1y0ngj31c00u0wsl.jpg",
    "https://tvax4.sinaimg.cn/large/005BYqpgly1g1utakzwq7j31c00u0q6j.jpg",
    "https://tvax2.sinaimg.cn/large/005BYqpgly1g1ursamh70j31c00u0k4b.jpg",
    "https://tvax3.sinaimg.cn/large/005BYqpggy1g1urvvt75jj31c00u017h.jpg",
    "https://tvax1.sinaimg.cn/large/005BYqpgly1g1usf35qmtj31c00u0jw9.jpg",
    "https://tvax1.sinaimg.cn/large/005BYqpggy1g1uq1a5fmrj31400p0wg9.jpg",
    "https://tvax3.sinaimg.cn/large/005BYqpgly1g1ut4v5ldjj31c00u077q.jpg",
    "https://tvax3.sinaimg.cn/large/005BYqpgly1g1urphzevej31hc0u0dpo.jpg",
    "https://tvax1.sinaimg.cn/large/005BYqpgly1g1us8z7l5ej31hc0u044j.jpg",
    "https://tvax3.sinaimg.cn/large/005BYqpggy1g1uq58noj7j31c00u0tdi.jpg",
    "https://tvax1.sinaimg.cn/large/005BYqpgly1g1us97zs5kj31c00u0n2s.jpg",
    "https://tvax4.sinaimg.cn/large/005BYqpgly1g1ut8v42bsj31c00u0q5g.jpg",
    "https://tvax2.sinaimg.cn/large/005BYqpggy1g3jt5q2p7tj315o0rtwri.jpg",
    "https://tvax2.sinaimg.cn/large/005BYqpggy1g1uqffq7doj31hc0u0aib.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: picList.length,
        itemBuilder: (context, index) {
          // return Tile(
          //   index: index,
          //   extent: (index % 5 + 1) * 100,
          // );
          return Image.network(picList.elementAt(index));
        },
      ),
    );
  }
}
