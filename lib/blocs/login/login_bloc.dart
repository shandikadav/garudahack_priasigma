import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import '../../models/user_model.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());
      await Future.delayed(const Duration(seconds: 1));
      try {
        final response = await http.post(
          Uri.parse('https://dakudaku.vercel.app/login'),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'email': event.email,
            'password': event.password,
          }),
        );

        final responseBody = jsonDecode(response.body);

        if (response.statusCode == 200) {
          final user = User.fromJson(responseBody);
          print(responseBody);
          await User.saveToSharedPreferences(user);
          emit(LoginSuccess(user));
        } else {
          emit(LoginError(responseBody['message'] ?? 'Failed to login'));
        }
      } catch (e) {
        emit(LoginError(
            'Failed to login, please check your email and password'));
      }
    });
  }
}
