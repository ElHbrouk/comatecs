import 'package:comatecs/core/class/statues_request.dart';

handlingData(response) {
  if (response is StatuesRequest) {
    return response;
  } else {
    return StatuesRequest.success;
  }
}
