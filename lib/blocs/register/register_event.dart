part of 'register_bloc.dart';

@immutable
sealed class RegisterEvent {}

final class RegisterSubmitted extends RegisterEvent {
  final String email;
  final String password;
  final String name;

  RegisterSubmitted(this.email, this.password, this.name);
}
