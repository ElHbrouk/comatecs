import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:meta/meta.dart';

part 'internet_event.dart';
part 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  StreamSubscription? internetSubscription;
  InternetBloc() : super(ConnectedState()) {
    on<InternetEvent>(
      (event, emit) {
        if (event is ConnectedEvent) {
          emit(ConnectedState());
        } else if (event is NotConnectedEvent) {
          emit(NotConnectedState());
        }
      },
    );
    internetSubscription =
        InternetConnection().onStatusChange.listen((InternetStatus status) {
      switch (status) {
        case InternetStatus.connected:
          //* The internet is now connected
          add(ConnectedEvent());
          break;
        case InternetStatus.disconnected:
          //* The internet is now disconnected
          add(NotConnectedEvent());
          break;
      }
    });
  }
  @override
  Future<void> close() {
    internetSubscription!.cancel();
    return super.close();
  }
}
