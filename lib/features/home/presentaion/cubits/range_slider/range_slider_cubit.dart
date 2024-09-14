import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'range_slider_state.dart';

class RangeSliderCubit extends Cubit<RangeSliderState> {
  RangeSliderCubit() : super(RangeSliderInitial());

  void setRange({required double min, required double max}) {
    // emit(RangeSliderSet(min: min, max: max));
  }
}
