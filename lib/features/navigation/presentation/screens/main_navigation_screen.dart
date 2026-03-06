import 'package:flutter/material.dart';
import 'package:smart_rent_mobile/features/home/presentation/home_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  //   const MainNavigationScreen({super.key});

  //   @override
  //   State<MainNavigationScreen> createState() => _MainNavigationScreenState();
  // }

  // class _MainNavigationScreenState extends State<MainNavigationScreen> {
  //   int _currentIndex = 0;

  //   final List<Widget> _screens = [
  //     const HomeScreen(isLoggedIn: true),
  //     const Placeholder(),
  //     const Placeholder(),
  //     const Placeholder(),
  //     const Placeholder(),
  //   ];

  //   void _onItemTapped(int index) {
  //     setState(() {
  //       _currentIndex = index;
  //     });
  //   }

  //   @override
  //   Widget build(BuildContext context) {
  //     return Scaffold(
  //       body: _screens[_currentIndex],

  //       floatingActionButton: FloatingActionButton(
  //         backgroundColor: Colors.white,
  //         elevation: 6,
  //         onPressed: () => _onItemTapped(0),
  //         child: const Icon(Icons.home, color: Colors.black),
  //       ),

  //       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

  //       bottomNavigationBar: BottomAppBar(
  //         shape: const CircularNotchedRectangle(),
  //         notchMargin: 8,
  //         color: Colors.black,
  //         child: SizedBox(
  //           height: 65,
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             children: [
  //               _navItem(Icons.search, "Explore", 1),

  //               _navItem(Icons.bookmark_border, "Saved", 2),

  //               const SizedBox(width: 40),

  //               _navItem(Icons.chat_bubble_outline, "Messages", 3),

  //               _navItem(Icons.person_outline, "Profile", 4),
  //             ],
  //           ),
  //         ),
  //       ),
  //     );
  //   }

  //   Widget _navItem(IconData icon, String label, int index) {
  //     final isSelected = _currentIndex == index;

  //     return InkWell(
  //       onTap: () => _onItemTapped(index),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Icon(icon, color: isSelected ? Colors.white : Colors.white54),

  //           const SizedBox(height: 4),

  //           Text(
  //             label,
  //             style: TextStyle(
  //               fontSize: 12,
  //               color: isSelected ? Colors.white : Colors.white54,
  //             ),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  // }

  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(isLoggedIn: true),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  final List<IconData> _icons = [
    Icons.home_outlined,
    Icons.search,
    Icons.bookmark_border,
    Icons.chat_bubble_outline,
    Icons.person_outline,
  ];

  final List<String> _labels = [
    "Home",
    "Explore",
    "Saved",
    "Messages",
    "Profile",
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],

      bottomNavigationBar: _buildNavBar(),
    );
  }

  Widget _buildNavBar() {
    return Container(
      height: 90,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_icons.length, (index) {
              final bool isActive = index == _currentIndex;

              return GestureDetector(
                onTap: () => _onTap(index),
                child: SizedBox(
                  width: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!isActive)
                        Icon(_icons[index], color: Colors.white70, size: 24),

                      const SizedBox(height: 5),

                      Text(
                        _labels[index],
                        style: TextStyle(
                          color: isActive ? Colors.white : Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),

          /// Floating Active Icon
          Positioned(
            top: -25,
            left:
                MediaQuery.of(context).size.width /
                    _icons.length *
                    _currentIndex +
                (MediaQuery.of(context).size.width / _icons.length / 2) -
                30,
            child: GestureDetector(
              onTap: () => _onTap(_currentIndex),
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F3E6),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: Colors.black26,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(
                  _icons[_currentIndex],
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
