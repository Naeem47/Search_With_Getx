// import 'package:get/get.dart';
// import 'package:your_project_name/models/follower_model.dart';
// import 'package:your_project_name/services/api_service.dart'; // Import your API service

// class FollowerController extends GetxController {
//   RxList<FollowerModel> allFollowers = <FollowerModel>[
//     FollowerModel(id: '1', name: 'John Doe'),
//     FollowerModel(id: '2', name: 'Jane Doe'),
//     FollowerModel(id: '3', name: 'Alice'),
//     FollowerModel(id: '4', name: 'Bob'),
//     // Add more dummy followers as needed
//   ].obs;

//   RxList<FollowerModel> searchedFollowers = <FollowerModel>[].obs;

//   final ApiService apiService = ApiService(); // Initialize your API service

//   @override
//   void onInit() {
//     super.onInit();
//     // Make API call to fetch all followers (replace this with your actual API call logic)
//     // Populate allFollowers with the API response
//     // For demonstration purposes, I'm using a simple API service method getAllFollowers
//     // that returns a List<FollowerModel> from the API response.
//     // Replace it with your actual API call logic.
//     apiService.getAllFollowers().then((response) {
//       allFollowers.assignAll(response);
//     }).catchError((error) {
//       // Handle error
//       print('Error fetching all followers: $error');
//     });
//   }

//   void searchFollowers(String query) {
//     if (query.isEmpty) {
//       // If the search query is empty, clear the search list
//       searchedFollowers.clear();
//     } else {
//       // Make API call to fetch followers based on search query
//       // For demonstration purposes, I'm using a simple API service method searchFollowers
//       // that takes the query as a parameter and returns a List<FollowerModel> from the API response.
//       // Replace it with your actual API call logic.
//       apiService.searchFollowers(query).then((response) {
//         searchedFollowers.assignAll(response);
//       }).catchError((error) {
//         // Handle error
//         print('Error searching followers: $error');
//       });
//     }
//     update(); // Notify listeners about the changes
//   }
// }
