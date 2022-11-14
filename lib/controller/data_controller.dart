import 'dart:developer';

import 'package:get/get.dart';
import 'package:helpinghands/services/service.dart';

class DataController extends GetxController {
  DataService service = DataService();

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<dynamic> _myData = [];
  List<dynamic> get myData => _myData;

  Future<void> getData() async {
    _isLoading = true;
    Response response = await service.getData();
    if (response.statusCode == 200) {
      _myData = response.body;
      print("we got the data");
      update();
    } else {
      print("we did not get any data");
    }
  }

  Future<void> postData(String charity, String charityDetail) async {
    _isLoading = true;
    Response response = await service
        .postData({"charity": charity, "charity_detail": charityDetail});
    if (response.statusCode == 200) {
      _myData = response.body;
      print("we got the data");
      update();
      print("Data posted successfully");
    } else {
      print("Data posting failled");
    }
  }
}
