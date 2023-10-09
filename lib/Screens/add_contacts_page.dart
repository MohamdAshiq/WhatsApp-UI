import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_ui/Constants/constants.dart';
import 'package:whatsapp_ui/Widgets/icon_button_widget.dart';

class AddContactsPage extends StatelessWidget {
  const AddContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.whatsAppGreen.withOpacity(1),
        foregroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "123 Members",
              style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
        actions: [
          IconButtonWidget(onpressed: () {}, icon: Icons.search_outlined),
          IconButtonWidget(onpressed: () {}, icon: Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReUsableListTile(icon: Icons.people, title: "New Group"),
              const ReUsableListTile(
                  icon: Icons.person_add, title: "New Contact"),
              const ReUsableListTile(
                  icon: Icons.people, title: "New Community"),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Contacts on WhatsApp",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Column(
                children: List.generate(
                  10,
                  (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(1),
                      foregroundColor: Colors.white,
                      child: const Icon(
                        Icons.people,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      "Contact ${index + 1}",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15.sp),
                    ),
                    subtitle: Text(
                      "Description of Contact ${index + 1}",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.sp),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReUsableListTile extends StatelessWidget {
  const ReUsableListTile({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Constants.whatsAppGreen.withOpacity(0.9),
        foregroundColor: Colors.white,
        child: Icon(
          icon,
          size: 21,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.sp),
      ),
    );
  }
}
