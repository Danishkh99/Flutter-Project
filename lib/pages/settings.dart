import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            "Rent itt",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.redAccent,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 5),
              child: ClipOval(
                child: Image.asset("assets/images/danish.jpeg"),
              ),
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [MyDrawerList()],
              ),
            ),
          ),
        ));
  }
}

Widget MyDrawerList() {
  var currentPage = DrawerSection.dashboard;
  return Container(
    padding: EdgeInsets.only(top: 15),
    child: Column(
      children: [
        MenuItems(1, "My Profile", Icons.person_outline,
            currentPage == DrawerSection.dashboard ? true : false),
        MenuItems(2, "Contact us", Icons.people_alt_outlined,
            currentPage == DrawerSection.contacts ? true : false),
        MenuItems(3, "Events", Icons.event,
            currentPage == DrawerSection.events ? true : false),
        MenuItems(4, "Privacy policy", Icons.privacy_tip,
            currentPage == DrawerSection.privacy_policy ? true : false),
        MenuItems(5, "Send feedback", Icons.feedback_outlined,
            currentPage == DrawerSection.send_feedback ? true : false),
      ],
    ),
  );
}

class MenuItems extends StatelessWidget {
  int id;
  String title;
  IconData icon;
  bool selected;
  MenuItems(this.id, this.title, this.icon, this.selected);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSection {
  contacts,
  events,
  dashboard,
  privacy_policy,
  send_feedback,
}
