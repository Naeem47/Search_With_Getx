import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/FollowersModel.dart';

class FollowerController extends GetxController {
  final TextEditingController qcontroller = TextEditingController();
  RxList<FollowersModel> allFollowers = <FollowersModel>[
    FollowersModel(id: '1', name: 'John Doe'),
    FollowersModel(id: '2', name: 'Jane Doe'),
    FollowersModel(id: '3', name: 'Alice'),
    FollowersModel(id: '4', name: 'Bob'),
    FollowersModel(id: '4', name: 'zz'),
    // Add more dummy followers as needed
  ].obs;
  RxList<FollowersModel> searchedFollowers = <FollowersModel>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  void searchFollowers(String query) {
    if (query.isEmpty) {
      searchedFollowers.clear();
    } else {
      // Your API call logic here, replace the following with your actual implementation
      searchedFollowers.assignAll(
        allFollowers
            .where((follower) =>
                follower.name.toLowerCase().contains(query.toLowerCase()))
            .toList(),
      );
    }
    update(); // Notify listeners about the changes
  }


}
