import 'package:flutter/material.dart';
import 'package:pointofsales_hive/state_util.dart';
import '../view/main_navigation_view.dart';

class MainNavigationController extends State<MainNavigationView>
    implements MvcController {
  static late MainNavigationController instance;
  late MainNavigationView view;

  int selectedIndex = 0;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
