import 'package:flutter/material.dart';
import 'package:flutter_app_demo/screens/component/fonts/fonts.dart';

class SuggestBox extends StatelessWidget {
   SuggestBox({super.key, required this.onSelect});
  final List<Map<String, String>> suggestions = [
    {'label': 'Living Room','icon': 'assets/images/livingRoom.png'},
    {'label': 'Dining Room', 'icon': 'assets/images/work_room.png'},
    {'label': 'Kitchen', 'icon': 'assets/images/kitchen.png'},
    {'label': 'Bathroom', 'icon': 'assets/images/bath_room.png'},
    {'label': 'Bedroom','icon': 'assets/images/bed_room.png'},
    {'label': 'Gara','icon': 'assets/images/gara.png'},
    {'label': 'Garden','icon': 'assets/images/graden.png'},
    {'label': 'Floor','icon': 'assets/images/floor.png'},
  ];
  final void Function(String newLabel) onSelect;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Suggest',
                  style: AppTextStyles.size16W700Grey,
                ),
              ),
            ),
            ...suggestions.map((item) {
              return Column(
                children: [
                  ListTile(
                    leading: Container(
                      height: 36,
                      width: 36,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        item['icon'] ?? '',
                        fit: BoxFit.contain,
                      ),
                    ),
                    title: Text(
                      item['label'] ?? '',
                      style: AppTextStyles.size13W400Grey
                    ),
                      onTap: () => {
                        onSelect(item['label'] ?? '')
                        },
                  ),
                  if (item != suggestions.last)
                    const Divider(
                      height: 1,
                      thickness: 1,
                      color: Color(0xFFE9E9E9),
                      indent: 16,
                      endIndent: 16,
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    )
    );
  }
}
