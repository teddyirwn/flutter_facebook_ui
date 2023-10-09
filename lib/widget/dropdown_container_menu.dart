import 'package:flutter/material.dart';

class DropdownMenuContainer extends StatefulWidget {
  const DropdownMenuContainer(
      {super.key, required this.icon, required this.item});

  final IconData? icon;
  final List<Map<dynamic, dynamic>> item;

  @override
  State<DropdownMenuContainer> createState() => _DropdownMenuContainerState();
}

class _DropdownMenuContainerState extends State<DropdownMenuContainer> {
  String? _selectedItem;

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  widget.icon,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Text(
                  _selectedItem ?? 'Select an item',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                Icon(_isExpanded
                    ? Icons.keyboard_arrow_up_rounded
                    : Icons.keyboard_arrow_down),
              ],
            ),
            if (_isExpanded)
              Column(
                children: widget.item.map((item) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        // _selectedItem = item ;
                        _isExpanded = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                      ),
                      child: ContainerMenu(
                        text: item['text'],
                        icon: item['icon'],
                      ),
                    ),
                  );
                }).toList(),
              ),
          ],
        ),
      ),
    );
  }
}

class ContainerMenu extends StatelessWidget {
  const ContainerMenu({
    super.key,
    required this.text,
    this.icon,
  });
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(children: [
        Icon(
          icon,
          size: 28,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
      ]),
    );
  }
}
