import 'package:flutter/material.dart';

class RecentCallSection extends StatelessWidget {
  const RecentCallSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Text(
            "Recent",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
        Column(
          children: List.generate(
            10,
            (index) => ListTile(
              onTap: () {},
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
                "Chat Call ${index + 1}",
                style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w600,
                    color: index.isOdd ? Colors.black : Colors.redAccent),
              ),
              subtitle: Row(
                children: [
                  index.isEven
                      ? const Icon(
                          Icons.arrow_outward,
                          size: 18,
                          color: Colors.green,
                        )
                      : const Icon(
                          Icons.call_received,
                          size: 18,
                          color: Colors.red,
                        ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "September ${index + 1}, 7:0$index PM",
                    style: TextStyle(
                        fontSize: 12.5,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Color.fromARGB(255, 74, 161, 79),
              ),
            ),
          ),
        )
      ],
    );
  }
}
