import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/Controller.dart';

class FollowerView extends StatelessWidget {
  final FollowerController controller = Get.put(FollowerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Followers'),
      ),
      body: Obx(
        () {
          if (controller.allFollowers.isEmpty) {
            return const Center(
              child: Text('No followers'),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    controller: controller.qcontroller,
                    onChanged: controller.searchFollowers,
                    decoration: const InputDecoration(
                      hintText: 'Search followers',
                    ),
                  ),
                  Expanded(
                    child: Obx(
                      () {
                        if (controller.searchedFollowers.isEmpty) {
                          if (controller.qcontroller.text != '' &&
                              controller.searchedFollowers.isEmpty) {
                            return const Center(
                              child: Text('Not Found'),
                            );
                          }
                          return ListView.builder(
                            itemCount: controller.allFollowers.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title:
                                    Text(controller.allFollowers[index].name),
                              );
                            },
                          );
                        } else {
                          return ListView.builder(
                            itemCount: controller.searchedFollowers.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(
                                    controller.searchedFollowers[index].name),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
