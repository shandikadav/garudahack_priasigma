import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../../models/user_model.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterSubmitted>((event, emit) async {
      // TODO: implement event handler
      emit(RegisterLoading());
      await Future.delayed(const Duration(seconds: 1));
      try {
        final response = await http.post(
          Uri.parse('https://7481qp09-3000.asse.devtunnels.ms/register'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'email': event.email,
            'password': event.password,
            'name': event.name,
          }),
        );
        final responseBody = jsonDecode(response.body);
        if (response.statusCode == 200) {
          final user = User.fromJson(responseBody);
          // await User.saveToSharedPreferences(user);
          emit(RegisterSuccess(user));
        } else {
          emit(RegisterFailure(responseBody['message'] ?? 'Failed to register'));
        }
        final user = User(
          email: event.email,
          name: event.name,
          password: event.password,
        );
        emit(RegisterSuccess(user));
      } catch (e) {
        emit(RegisterFailure('Failed to register, please try again'));
      }
    });
  }
}
