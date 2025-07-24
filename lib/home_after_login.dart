import 'package:flutter/material.dart';

class HomeAfterLogin extends StatefulWidget {
  const HomeAfterLogin({super.key});

  @override
  State<HomeAfterLogin> createState() => _HomeAfterLoginState();
}

class _HomeAfterLoginState extends State<HomeAfterLogin> {
  int _selectedIndex = 0;

  static const List<String> items = [
    "العنصر الأول",
    "العنصر الثاني",
    "العنصر الثالث",
    "العنصر الرابع",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildListPage() {
    return Column(
      children: [
        Image.asset("images/boy_and_girl.png", height: 200),
        Container(
          height: 420,
          decoration: const BoxDecoration(
            color: Color(0xFF1381A6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    items[index],
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("ضغطت على ${items[index]}"),
                    ));
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildSearchPage() {
    return Center(
      child: Text(
        'صفحة البحث',
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget buildAccountPage() {
    return Column(
      children: [
        Image.asset("images/boy_and_girl.png", height: 200),
        Container(
          height: 420,
          decoration: const BoxDecoration(
            color: Color(0xFF1381A6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Center(
            child: Text(
              "معلومات الحساب",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      buildListPage(),
      buildSearchPage(),
      buildAccountPage(),
    ];

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'بحث'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'الحساب'),
        ],
      ),
    );
  }
}
