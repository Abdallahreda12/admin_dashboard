import 'package:admin_dashboard/Views/DashBoardVew.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdminDashBoard());
}

class AdminDashBoard extends StatelessWidget {
  const AdminDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DashBoardView());
  }
}
