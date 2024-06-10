import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodpacket/views/utils/AppColor.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
        vertical: MediaQuery.of(context).size.height * 0.01,
      ),
      color: Colors.transparent,
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => widget.onItemTapped(0),
                  child: SvgPicture.asset(
                    widget.selectedIndex == 0
                        ? 'assets/icons/home-filled.svg'
                        : 'assets/icons/home.svg',
                    color: widget.selectedIndex == 0
                        ? AppColor.primary
                        : Colors.grey[600],
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                GestureDetector(
                  onTap: () => widget.onItemTapped(1),
                  child: SvgPicture.asset(
                    widget.selectedIndex == 1
                        ? 'assets/icons/discover-filled.svg'
                        : 'assets/icons/discover.svg',
                    color: widget.selectedIndex == 1
                        ? AppColor.primary
                        : Colors.grey[600],
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                GestureDetector(
                  onTap: () => widget.onItemTapped(2),
                  child: SvgPicture.asset(
                    widget.selectedIndex == 2
                        ? 'assets/icons/bookmark-filled.svg'
                        : 'assets/icons/bookmark.svg',
                    color: widget.selectedIndex == 2
                        ? AppColor.primary
                        : Colors.grey[600],
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.height * 0.03,
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
