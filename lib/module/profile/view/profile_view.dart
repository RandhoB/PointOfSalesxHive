import 'package:flutter/material.dart';
import 'package:pointofsales_hive/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: Get.width / 6,
                backgroundImage: const NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              const Text(
                "Randho Bagaskara",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              const Text(
                "randho.bagas12@gmail.com",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              const Text(
                "Frontend Developer",
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Card(
                child: ListTile(
                  title: Text("Setting"),
                  subtitle: Text("Your App Setting"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text("TOS"),
                  subtitle: Text("Term Of Service"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              const Card(
                child: ListTile(
                  title: Text("Privacy Policy"),
                  subtitle: Text("-"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.logout),
                label: const Text("Logout"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
