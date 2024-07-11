import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloctemplate_event.dart';
part 'bloctemplate_state.dart';

class BloctemplateBloc extends Bloc<BloctemplateEvent, BloctemplateState> {
  BloctemplateBloc() : super(BloctemplateInitial()) {
    on<BloctemplateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
