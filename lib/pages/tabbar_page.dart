import 'package:flutter/material.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({Key key}) : super(key: key);

  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  List<String> _tabs = ['One', 'Two', 'Three'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: TabBar(
            // indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/618.png'),
                fit: BoxFit.cover,
              ),
            ),
            isScrollable: true,
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          ),
        ),
        body: TabBarView(
          children: _tabs.map((String name) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                builder: (BuildContext context) {
                  return Center(
                    child: Text('Page $name'),
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
