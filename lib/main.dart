import 'package:f_demo/page0.dart';
import 'package:f_demo/page1.dart';
import 'package:f_demo/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: '111',
      home: BottomNavigationDemo(
        restorationId: '1',
      ),
    );
  }
}

//bottomNavigationWidget
class BottomNavigationDemo extends StatefulWidget {
  const BottomNavigationDemo({Key? key, required this.restorationId})
      : super(key: key);

  //destination id
  final String restorationId;

  @override
  State<BottomNavigationDemo> createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo>
    with RestorationMixin {
  final RestorableInt _currentIndex = RestorableInt(0);

  @override
  String get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentIndex, 'bottom_navigation_tab_index');
  }

  @override
  void dispose() {
    _currentIndex.dispose();
  }

  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  static List<Widget> _widgetOptions = [
    Page0(),
    Page1(),
    Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    var bottomNavigationBarItem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: const Icon(Icons.add_comment),
        label: "图库",
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.calendar_today),
        label: "图文",
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.music_note),
        label: "钢琴",
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: _widgetOptions[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItem,
        currentIndex: _currentIndex.value,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: textTheme.caption!.fontSize!,
        unselectedFontSize: textTheme.caption!.fontSize!,
        onTap: (index) {
          setState(() {
            _currentIndex.value = index;
            _onItemTapped(index);
          });
        },
        selectedItemColor: colorScheme.onPrimary,
        unselectedItemColor: colorScheme.onPrimary.withOpacity(0.38),
        backgroundColor: colorScheme.primary,
      ),
    );
  }
}
