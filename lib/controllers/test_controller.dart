import 'package:comatecs/core/class/statues_request.dart';
import 'package:comatecs/core/data/remote/test_data.dart';
import 'package:comatecs/core/functions/handling_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  TestData testData = TestData(crud: Get.find());
  List data = [];

  late StatuesRequest statuesRequest;
  getData() async {
    statuesRequest = StatuesRequest.loading;
    var response = await testData.getData();
    print(response);
    statuesRequest = handlingData(response);
    if (StatuesRequest.success == statuesRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statuesRequest = StatuesRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
