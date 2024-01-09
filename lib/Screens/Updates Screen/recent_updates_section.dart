import 'package:flutter/material.dart';

class RecentUpdatesSection extends StatelessWidget {
  const RecentUpdatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(splashColor: Colors.transparent),
      child: ExpansionTile(
        iconColor: Colors.grey[700],
        tilePadding: EdgeInsets.zero,
        collapsedBackgroundColor: Colors.transparent,
        title: Text(
          "Recent Updates",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.grey[800],
          ),
        ),
        children: List.generate(
          10,
          (index) => ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 10,
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.grey[400],
              foregroundColor: Colors.white,
              radius: 25,
              child: const Icon(
                Icons.person,
                size: 30,
              ),
            ),
            title: Text(
              "Status ${index + 1}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              "${index + 1} minutes ago",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700]),
            ),
          ),
        ),
      ),
    );
  }
}
