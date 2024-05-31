import 'package:flutter_app/features/home/tabs/home_reels_screen.dart';
import 'package:flutter_app/features/home/tabs/profile_screen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var currentScreen=0.obs;
  var screens=[
    HomeReelsScreen(),
    ProfileScreen(),
  ].obs;
}